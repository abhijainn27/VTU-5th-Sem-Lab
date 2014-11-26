#include<stdio.h>
main()
{
int pid;
pid=fork();
if(pid==0)
{
printf("********child's process id *****\n");
printf("child process id = %d \n",getpid());
printf("parent process id = %d \n",getppid());
}
else
{
wait();
printf("****** parent's process id *******\n");
printf("parent process id = %d \n",getpid());
printf("child's process id = %d " ,pid);
}
return 0;
}
