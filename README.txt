Jennifer Vazquez 


1. “How is this LWP library different from a real thread management library?
 Name two ways in which this LWP library API could be improved.”

 In this current LWP Library, there will be memory leaks because we do not 
 free data as we terminate the thread. Going back to what we learned in class, there 
 is no explicit lock and unlock state to ensure that one thread is running their critical section; 
 additionally, there is no semaphore behavior that guarentees there is no two processes running at the 
 same time.