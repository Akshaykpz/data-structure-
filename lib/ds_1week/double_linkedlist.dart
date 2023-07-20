class Node {
  dynamic data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class DoublyLinkedList {
  Node? head;
  Node? tail;

  void add(dynamic data) {
    final newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
      tail = newNode;
    }
  }

  void printForward() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void printBackward() {
    Node? current = tail;
    while (current != null) {
      print(current.data);
      current = current.prev;
    }
  }
}

void main() {
  DoublyLinkedList doublyLinkedList = DoublyLinkedList();
  doublyLinkedList.add(1);
  doublyLinkedList.add(2);
  doublyLinkedList.add(3);
  doublyLinkedList.add(4);

  doublyLinkedList.printForward(); // Output: 1 2 3 4
  doublyLinkedList.printBackward(); // Output: 4 3 2 1
}
