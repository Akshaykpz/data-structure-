import 'dart:math';

void main() {
  List<int> arr = [8,9,5,1,3,2];
  print(quickSort(arr));
}

List<int> quickSort(List<int> arr) {
   // Base case: if the length of the array is less than 2, it's already sorted
  if (arr.length < 2) {
    return arr;
  }

    // Select the last element of the array as the pivot
  int pivort = arr[arr.length - 1];
    // Create empty arrays for elements less than the pivot and elements greater than or equal to the pivot
  List<int> l = [];
  List<int> r = [];

// Iterate through the array (excluding the pivot)
  for (int i = 0; i < arr.length - 1; i++) {
     // If the current element is less than the pivot, add it to the left array, otherwise add it to the right array
    if (arr[i] < pivort) {
      l.add(arr[i]);
    } else {
      r.add(arr[i]);
    }
  }
 // Recursively call quickSort on the left and right arrays, and concatenate the sorted arrays with the pivot to produce the final sorted array
  return [...quickSort(l), pivort, ...quickSort(r)];
}