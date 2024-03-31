Tree tree;

void setup() {
  size(600,400);
  background(51);
  tree  = new Tree();
  for(int i = 0; i < 10; i++) {
    tree.addValue(round(random(0,100)));
  }
  tree.traverse();
}

void draw() {
  
}
