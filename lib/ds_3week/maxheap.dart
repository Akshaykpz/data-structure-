class MaxHeap {
  List<int>? heap;

  MaxHeap(List<int> array) {
    heap = [];
    if (array != null) {
      buildHeap(array);
    }
  }

  void buildHeap(List<int> array) {
    heap = List.from(array);
    for (int i = parent(heap!.length - 1); i >= 0; i--) {
      shiftDown(i);
    }
  }

  void shiftDown(int curr) {
    int end = heap!.length - 1;
    int left = leftChild(curr);
    while (left <= end) {
      int right = rightChild(curr);
      int shift;
      if (right <= end && heap![right] > heap![left]) {
        shift = right;
      } else {
        shift = left;
      }
      if (heap![shift] > heap![curr]) {
        _swap(curr, shift);
        curr = shift;
        left = leftChild(curr);
      } else {
        return;
      }
    }
  }

  void insert(int value) {
    heap!.add(value);
    shiftUp(heap!.length - 1);
  }

  void shiftUp(int curr) {
    int parent = this.parent(curr);
    while (curr > 0 && heap![curr] > heap![parent]) {
      _swap(curr, parent);
      curr = parent;
      parent = this.parent(curr);
    }
  }

  void remove() {
    _swap(0, heap!.length - 1);
    int removed = heap!.removeLast();
    shiftDown(0);
  }

  void sort() {
    for (int i = heap!.length - 1; i >= 0; i--) {
      sorting(i);
    }
  }

  void sorting(int curr) {
    _swap(0, curr);
    heap!.removeLast();
    shiftDown(0);
  }

  void display() {
    print(heap);
  }

  int parent(int i) {
    return ((i - 1) ~/ 2);
  }

  int leftChild(int i) {
    return (i * 2) + 1;
  }

  int rightChild(int i) {
    return (i * 2) + 2;
  }

  void _swap(int i, int j) {
    int temp = heap![i];
    heap![i] = heap![j];
    heap![j] = temp;
  }
}

void main() {
  List<int> array = [7, 5, 6, 3, 8, 9];
  MaxHeap heap = MaxHeap(array);
  heap.insert(13);
  heap.remove();
  heap.display();
  heap.sort();
}
