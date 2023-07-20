class node {
  int value;
  node? left;
  node? right;
  node(this.value);
}

class binarysearchtree {
  node? root;
  void insert(int value) {
    node? currentnode = root;
    if (currentnode == null) {
      root = node(value);
      return;
    }
    while (true) {
      if (value < currentnode!.value) {
        if (currentnode.left == null) {
          currentnode.left = node(value);
          break;
        } else {
          currentnode = currentnode.left;
        }
      } else if (value > currentnode.value) {
        if (currentnode.right == null) {
          currentnode.right = node(value);
          break;
        } else {
          currentnode = currentnode.right;
        }
      } else {
        break;
      }
    }
  }

  void pretravers(node? node) {
    if (node != null) {
      print(node.value);
      pretravers(node.left);
      pretravers(node.right);
    }
  }

  void predisplay() {
    pretravers(root);
  }

  void inordertravers(node? node) {
    if (node != null) {
      inordertravers(node.left);
      print(node.value);
      inordertravers(node.right);
    }
  }

  void inorder() {
    inordertravers(root);
  }

  void postordertravel(node? node) {
    if (node != null) {
      postordertravel(node.right);
      print(node.value);
      postordertravel(node.left);
    }
  }

  void postorder() {
    postordertravel(root);
  }

  bool search(int value) {
    node? currentnode = root;
    while (currentnode != null) {
      if (value < currentnode.value) {
        currentnode = currentnode.left;
      } else if (value > currentnode.value) {
        currentnode = currentnode.right;
      } else {
        return true;
      }
    }
    return false;
  }

  bool isBST(node? root) {
    if (root == null) {
      return true;
    }
    if (root.left != null && root.left!.value > root.value) {
      return false;
    }
    if (root.right != null && root.right!.value < root.value) {
      return false;
    }
    if (!isBST(root.left) || !isBST(root.right)) {
      return false;
    }
    return true;
  }
}

void main(List<String> args) {
  binarysearchtree tree = binarysearchtree();
  tree.insert(10);
  tree.insert(5);
  tree.insert(3);
  tree.insert(7);
  tree.insert(12);
  tree.insert(13);
  tree.insert(14);
  print('------');
  // print(tree.search(30));
  // tree.predisplay();
  // print(tree.isBST(tree.root));
  tree.postorder();
  // tree.inorder();

  // Map map=Map();
  // map={
  //   "name":'anu',
  //   "id":[
  //     14,
  //     15
  //     ,26
  //     ,26
  //   ]

  // };

  // print(map);
}
