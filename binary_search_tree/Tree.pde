class Tree {
  Node root = null;
  Tree() {
  }

  void addValue(int num) {
    Node n = new Node(num);
    if (root == null) {
      root = n;
      root.x = width/2;
      root.y =  16;
      root.parent = null;
    } else {
      root.addNode(n);
    }
  }

  void traverse() {
    root.visit();
  }
  
  void search(int v){
    root.search(v);
  }
}
