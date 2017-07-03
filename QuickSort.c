//Average O(nlogn), worst O(n^2)

#include<stdio.h>
#include <stdbool.h>
int max=10000;
//swap two elements
void swap(int *a,int *b){
    int tmp=*a;
    *a=*b;
    *b=tmp;
}
//quick sort function
void quicksort(int a[],int left,int right){
    int i=left+1,j=right;
    int pivot=a[left];
    if(left>=right){
        return;
    }
    //search from two side
    while(1){
        while(a[j]>pivot){
            j--;
        }
        while(a[i]<pivot&&i<j){
            i++;
        }
        if(i>=j){
            break;
        }
        swap(&a[i],&a[j]);
        if(a[i]==pivot){
            j--;
        }else{
            i++;
        }
    }
    //swap two elements
    swap(&a[left],&a[j]);
    if(left<i-1){
        quicksort(a,left,i-1);
    }
    if(right>j+1){
        quicksort(a,j+1,right);    
    }
}
int main(){
    int s[max];
    int input;
    int i=0;
    bool positive=true;
    //less than 1000000000 per integer
    while((input=getchar())!='\n'){
        //if input space, i++
        if(input==32){
            if(positive==false){
                s[i]=s[i]*-1;
            }
            i++;
            positive=true;
            continue;
        }else if(input==45){
            //if is negative
            positive=false;
        }else if(input<48||input>58){
                //if input is not from 0 to 9, output error
                printf("Invild input !!!");
                i=-1;
                break;
        }else{    
            //the preview multply 10 and plus the current
            s[i]=s[i]*10+input-48;
        }
    }
    //if the last input is negative
    if(positive==false){
        s[i]=s[i]*-1;
    }
    //quick sort
    quicksort(s,0,i);
    //output result
    if(i!=-1){
        printf("After quick sort:\n");
    }
    for(int j=0;j<=i;j++){
        printf("%d ",s[j]);
    }
    printf("\n");
    return 0;
}
