#include <stdio.h>

int main(){
  int arr[5] = {13,1,34,0,202};
  int i = 0;
  int j = 0;
  for(i; i < 5; i++){
    for(j; j < (5 - i - 1); j++){
      if(arr[j] > arr[j + 1]){
        int tmp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = tmp;
      }
    }
  }
}