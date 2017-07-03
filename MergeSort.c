//Best Ω(nlogn), average Θ(nlogn), worst O(nlogn)

#include<stdio.h>
#include <stdbool.h>
int max=10000;
void merge(int a[],int b[],int start,int mid,int end)
{
    int i,j,k;
    for(i=mid+1,j=start;start<=mid&&i<=end;j++){
        if(a[start]<a[i]){
            b[j]=a[start++];
        }else{
            b[j]=a[i++];
        }
    }
    if(start<=mid){
        for(k=0;k<=mid-start;k++){
            b[j+k]=a[start+k];
        }
    }
    if(i<=end){
        for(k=0;k<=end-i;k++){
            b[j+k]=a[i+k];
        }
    }
}
void mergesort(int a[], int b[], int start, int end){
    int tmp[100];
    if(start==end){
        b[start] = a[start];
    }
    else{
        int mid = (start+end)/2;
        mergesort(a,tmp,start,mid);
        mergesort(a,tmp,mid+1,end);
        merge(tmp,b,start,mid,end);
    }
}
int main(){
    int s[max],y[max];
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
    mergesort(s,y,0,i);
    //output result
    if(i!=-1){
        printf("After sort:\n");
    }
    for(int j=0;j<=i;j++){
        printf("%d ",y[j]);
    }
    printf("\n");
    return 0;
}
