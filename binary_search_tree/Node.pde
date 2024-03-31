class Node {
  int val, x, y;
  Node left, right, parent;
  Node(int val) {
    this.val = val;
  }

  Node search(int v) {
    if (val == v) {
      println("found " + v);
      return this;
    } else if (v < val && left != null) {
      left.search(v);
    } else if (v > val && right != null) {
      right.search(v);
    }
    return null;
  }

  void visit() {
    if (left != null) {
      left.visit();
    }
    println(val);
    if (right != null) {
      right.visit();
    }
    draw();
  }

  void draw() {
    stroke(255);
    if (parent != null) {
      line(parent.x, parent.y, x, y);
    }
    textAlign(CENTER);
    fill(51);
    ellipse(x, y, 30, 30);
    fill(255);
    text(val, x, y);
  }

  void addNode(Node n) {
    if (n.val < val) {
      if (left == null) {
        left = n;
        left.parent = this;
        left.x = x - 50;
        left.y = y + 20;
      } else {
        left.addNode(n);
      }
    } else if (n.val > val) {
      if (right == null) {
        right = n;
        right.parent = this;
        right.x = x + 50;
        right.y = y + 20;
      } else {
        right.addNode(n);
      }
    }
  }
}
