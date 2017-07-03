//Best O(n), worst O(n^2)

#include<stdio.h>
#include<stdbool.h>
int max=10000;
void insertionsort(int a[],int start,int end){
    int i,j;
    int tmp;
    for(i=start+1;i<=end;i++){
        tmp=a[i];
        j=i-1;
        //if a[i] less than preview, swap
        while((j>=start)&&(a[j]>tmp)){
            a[j+1]=a[j];
            j--;
        }
        a[j+1]=tmp;
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
    insertionsort(s,0,i);
    //output result
    if(i!=-1){
        printf("After sort:\n");
    }
    for(int j=0;j<=i;j++){
        printf("%d ",s[j]);
    }
    printf("\n");
    return 0;
}
