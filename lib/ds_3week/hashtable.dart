class HashTable {
  late int size;
  late List table;

  HashTable(this.size) {
    // filled function is used to make growable list
    table = List.filled(size, null);
  }

  int hash(dynamic key) {
    if (key is String) {
      int total = 0;
      for (int i = 0; i < key.length; i++) {
        total += key.codeUnitAt(i);
      }
      return total % size;
    } else {
      return key % size;
    }
  }

  void set(dynamic key, dynamic value) {
    int index = hash(key);
    table[index] = value;
  }

  // void remove(dynamic key) {
  //   int index = hash(key);
  //   table[index] = null;
  // }

  // dynamic get(dynamic key) {
  //   int index = hash(key);
  //   return table[index];
  // }

  void display() {
    for (int i = 0; i < size; i++) {
      if (table[i] != null) {
        print(table[i]);
      }
    }
  }
}

void main(List<String> args) {
  HashTable table = HashTable(10);
  table.set("name", 132);
  table.set("nanu", 12);
  table.set("manu", 2);
  table.display();
}
