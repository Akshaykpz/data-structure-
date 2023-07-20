void main() {
  List<int> arr = [-6, 20, 8, -2, 4];
  print(mergeSort(arr));
}

List<int> mergeSort(List<int> arr) {
  if (arr.length < 2) {
    return arr;
  }

  int mid = (arr.length / 2).floor();
  List<int> left = arr.sublist(0, mid);
  List<int> right = arr.sublist(mid);

  return merge(mergeSort(left), mergeSort(right));
}

List<int> merge(List<int> left, List<int> right) {
  List<int> sorted = [];

  while (left.isNotEmpty && right.isNotEmpty) {
    if (left[0] <= right[0]) {
      sorted.add(left.removeAt(0));
    } else {
      sorted.add(right.removeAt(0));
    }
  }

  return [...sorted, ...left, ...right];
}
