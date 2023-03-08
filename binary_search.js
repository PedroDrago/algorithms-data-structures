function binarySearch(arr, needle){
  let low = 0;
  let high = arr.length-1;

  do{
    let middle = Math.floor(low + (high - low)/2);
    let value = arr[middle];
    if(value === needle){
      return middle;
    }else if(value > needle){
      high = middle;
    }else if(value < needle){
      low = middle + 1;
    }
  }while(low < high)
}