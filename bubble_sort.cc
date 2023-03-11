#include <stdio.h>

int main() {
  int length = 10;
  int arr[length] = {43, 2, 1, 13, 16, 32, 90, 313, 0, -25};

  for (int i = 0; i < length; i++) {
    printf("%i", arr[i]);
    for (int j = 0; i < length - 1 - i; j++) {
      if (arr[j] > arr[j + 1]) {
        int tmp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = tmp;
      }
    }
  }

  return 0;
}
