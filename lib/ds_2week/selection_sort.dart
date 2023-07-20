void selectionSort(List<int> arr) {
  final n = arr.length;

  for (int i = 0; i < n - 1; i++) {
    int minIndex = i;

    for (int j = i + 1; j < n; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }

    if (minIndex != i) {
      int temp = arr[i];
      arr[i] = arr[minIndex];
      arr[minIndex] = temp;
    }
  }
}

void main(List<String> args) {
    List<int> numbers = [64, 34, 25, 12, 22, 11, 90];

  print("Original List: ${numbers}");
  selectionSort(numbers);
  print("Sorted List: ${numbers}");
} 

