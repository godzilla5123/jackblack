
Shoe s;
Game g;


void setup() {
  size(1200, 900);
  surface.setTitle("Casino");
  s = new Shoe(3);
  g = new Game();
  
  g.newGame(5);
  
  }


void draw() {
  background(0, 155, 0);
   g.drawCards(30, 450);
}


void mouseClicked() {
  //hands.get(0).getValue();
}
