import 'dart:collection';
import 'dart:io';

class Graph {
  Map<int, List<int>> map = HashMap();

  void add(int data) {
    map.addAll({data: []});
  }

  void inert(int vertex, int egde, bool bidirectional) {
    if (!map.containsKey(vertex)) {
      add(vertex);
    }
    if (!map.containsKey(egde)) {
      add(egde);
    }
    map[vertex]?.add(egde);
    if (bidirectional) {
      map[egde]?.add(vertex);
    }
  }

  void remove(int data) {
    map.remove(data);
    for (var x in map.values) {
      if (x.contains(data)) {
        x.remove(data);
      }
    }
  }

  void deleteEdge(int vertex1, int vertex2) {
    if (map[vertex1]!.contains(vertex2)) {
      map[vertex1]!.remove(vertex2);
    }
  }

  void display() {
    for (var x in map.keys) {
      stdout.write('$x :');
      for (var y in map[x]!) {
        stdout.write(' $y');
      }
      print('');
    }
  }
}

void main(List<String> args) {
  Graph gar = Graph();

  gar.inert(3, 4, true);
  gar.inert(4, 2, true);
  gar.inert(3, 1, true);
  gar.deleteEdge(1, 2);
  gar.display();
}
