import 'dart:collection';

class Graph {
  int ?_vertices;
 late  List<List<int>> _adjList;

  Graph(int? vertices) {
    _vertices = vertices;
    _adjList = List<List<int>>.generate(_vertices!, (_) => []);
  }

  void addEdge(int source, int destination) {
    _adjList[source].add(destination);
    _adjList[destination].add(source);
  }

  void bfs(int startVertex) {
    List<bool> visited = List<bool>.filled(_vertices!, false);

    Queue<int> queue = Queue<int>();
    visited[startVertex] = true;
    queue.add(startVertex);

    while (queue.isNotEmpty) {
      int currentVertex = queue.removeFirst();
      print('$currentVertex ');

      for (int adjacentVertex in _adjList[currentVertex]) {
        if (!visited[adjacentVertex]) {
          visited[adjacentVertex] = true;
          queue.add(adjacentVertex);
        }
      }
    }
  }
}

void main() {
  Graph graph = Graph(6);

  graph.addEdge(0, 1);
  graph.addEdge(0, 2);
  graph.addEdge(1, 2);
  graph.addEdge(1, 4);
  graph.addEdge(2, 3);
  graph.addEdge(3, 4);
  graph.addEdge(3, 5);

  print('BFS traversal starting from vertex 0:');
  graph.bfs(0);
}
