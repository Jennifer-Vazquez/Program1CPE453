#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <sys/wait.h>
#include <unistd.h>
#include "lwp.h"

lwp_context lwp_ptable[LWP_PROC_LIMIT]; 
int lwp_procs = 0;
int lwp_running = 0; //do i want this as zero 

schedfun SF = NULL;
void* mainSP = NULL; 

int new_lwp(lwpfun function,void * arg,size_t stackSize){
  // printf("NEW LWP\n");
   if(lwp_procs == LWP_PROC_LIMIT){
       return -1;
   }

   
    
    int allocateDataSize = sizeof(ptr_int_t) * stackSize; 
    ptr_int_t *sp = (ptr_int_t *) malloc(allocateDataSize); 

    ptr_int_t *spStart = sp;

    sp += stackSize; // return the highest address
    
    //add func and arg to the stack 
    sp -= 1;
    *sp = (ptr_int_t) arg; //add arg to stack

    sp -= 1;
    *sp = (ptr_int_t) lwp_exit; //add return to stack will be exit 

    sp -= 1; 
    *sp =  (ptr_int_t) function; // add function pointer to the stack

    sp -= 1; 
    *sp = -1; //bogus pointer value 

    ptr_int_t *bbp = sp; 

    //bogus registers 
    sp -= 1; 
    *sp = 0x1111;  
    sp -= 1; 
    *sp = 0x2222; 
    sp -= 1; 
    *sp = 0x3333; 
    sp -= 1; 
    *sp = 0x4444; 
    sp -= 1; 
    *sp = 0x5555; 
    sp -= 1; 
    *sp = 0x6666; 

    sp -= 1; 
    *sp = (ptr_int_t) bbp; //pointer to bbp


    lwp_context newLWPContext;
    newLWPContext.pid = lwp_procs;
    newLWPContext.stack = spStart;
    newLWPContext.stacksize = stackSize;
    newLWPContext.sp = sp;

    lwp_ptable[lwp_procs] = newLWPContext;
    lwp_procs++;
    

    return lwp_running;  
}


void lwp_start(){
   //printf("STARTING LWP\n");

    if(lwp_procs == 0){ //return immdidately if there is no processes
       return; 
    }

    SAVE_STATE();
    GetSP(mainSP);

    if(SF == NULL){
        //lwp_running = (lwp_running + 1)% lwp_procs; // idk if its right, rethink jen 
        lwp_running = 0;
    }
    else{
        lwp_running = SF();
    }

    SetSP(lwp_ptable[lwp_running].sp);
    RESTORE_STATE();
    

}

void lwp_yield(){
   // printf("YIELDING\n");
    SAVE_STATE();
    GetSP(lwp_ptable[lwp_running].sp);

    if(SF == NULL){
        lwp_running = (lwp_running + 1)% lwp_procs; // idk if its right, rethink jen 
    }
    else{
        lwp_running = SF();
    }

    SetSP(lwp_ptable[lwp_running].sp);
    RESTORE_STATE();
}


void lwp_exit(){
    //printf("EXITING\n");
        //terminates current process
        free(lwp_ptable[lwp_running].stack);
        //remove the current running process
        //move everything up
        for(int i = lwp_running; i < lwp_procs; i++){
            lwp_ptable[i] = lwp_ptable[i +1];
        } 

        lwp_procs--;
        if(lwp_procs == 0){
            lwp_stop(); //restore current stack pointer 
        }
        else{ 
            if(SF == NULL){
                lwp_running = 0;
            }
            else{
                lwp_running = SF();
            }
            SetSP(lwp_ptable[lwp_running].sp);
            RESTORE_STATE();
        }
    }


void lwp_stop(){
    //printf("Making new lwp\n");
    SAVE_STATE();
    SetSP(mainSP);
    RESTORE_STATE();
}

void lwp_set_scheduler(schedfun sched){
    SF = sched;
}

int lwp_getpid(){
    return lwp_ptable[lwp_running].pid;
}