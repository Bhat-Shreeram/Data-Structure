#include<stdio.h>
#include<stdlib.h>
#define size 3
int queue[size];
int front=-1,rear=-1;
void insert();
void delete();
void display();
void main()
{

int choice;
while(1)
  {
    printf("\n Enter the choice \n 1. insert \n 2.delete \n 3.display \n 4.exit \n");
    scanf("%d",&choice);
    switch(choice)
    {

        case 1:insert();
                break;
        case 2:delete();
                break;
        case 3:display();
                break;
        case 4:exit(0);
        default:printf("Invalid choice");
    }
  }

}
void insert()
{
    int val;
    if(rear==size)
    {
        printf("the queue is full");
    }
    else
    {
        if( front==-1&&rear==-1)
        {

            front=0;
            rear=0;
        }

        printf("Enter the value to insert\n");
        scanf("%d",&val);
        queue[rear]=val;
        rear++;

    }
}
void delete()
{
    int d;
    if(front==-1&&rear==-1)
    {
        printf("The queue is empty");
    }
    else
    {
        d=queue[front];
        printf("The deleted element is %d",d);
        if(front==(rear-1))
    {
        front=-1;
        rear=-1;
    }
    else
    {
        front++;
    }
    }
}
void display()
{
      int i;
      if(front==-1&&rear==-1)
    {
        printf("The queue is empty");
    }
    else
    {
        printf("The queue are :\n");
        for(i=front;i<rear;i++)
        printf("%d \n",queue[i]);
    }
}

