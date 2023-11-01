#include <stdio.h>

#include <stdlib.h>

#define maxsize 5

void enqueue();

void dequeue();

void display();

int front = -1, rear = -1;

int queue[maxsize];

int main() {

 int choice;

 while (1) {

 printf("\nQueue using Array");

 printf("\n1.Insert an element\n2.Delete an element\n3.Display the 

queue\n4.Exit\n");

 printf("\nEnter your choice: ");

 scanf("%d", &choice);

 switch (choice) {

 case 1:

 enqueue();

 break;
case 2:

 dequeue();

 break;

 case 3:

 display();

 break;

 case 4:

 exit(0);

 default:

 printf("\nEnter valid choice.\n");

 }

 }

 return 0;

}

void enqueue() {

 int item;

 if (rear == maxsize - 1) {

 printf("\nQueue is full (OVERFLOW).\n");

 return;

 }

 

 printf("\nEnter the element: ");

 scanf("%d", &item);

 if (front == -1) {

 front = 0;

 }

 rear = rear + 1;
queue[rear] = item;

 printf("\nValue %d inserted.\n", item);

}

void dequeue() {

 if (front == -1) {

 printf("\nQueue is empty (UNDERFLOW).\n");

 return;

 }

 

 int item = queue[front];

 if (front == rear) {

 front = -1;

 rear = -1;

 } else {

 front = front + 1;

 }

 printf("\nValue %d deleted.\n", item);

}

void display() {

 if (rear == -1) {

 printf("\nEmpty queue.\n");

 } else {

 printf("\nPrinting values:\n");

 for (int i = front; i <= rear; i++) {

 printf("%d\n", queue[i]);

 }

 }

}
