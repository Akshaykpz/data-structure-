void insertionSort(List<int> arr) {
  final n = arr.length;
  
  for (int i = 1; i < n; i++) {
    int key = arr[i];
    int j = i - 1;
    
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];  
      j--;
    }
    
    arr[j + 1] = key;
  }
}
void main(List<String> args) {
   List<int> numbers = [64, 34, 25, 12, 22, 11, 90];
  
  print("Original List: ${numbers}");
  insertionSort(numbers);
  print("Sorted List: ${numbers}");
}