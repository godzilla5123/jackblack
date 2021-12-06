
Shoe s;
Game g;


void setup() {
  size(1200, 900);
  surface.setTitle("Casino");
  s = new Shoe(4);
  g = new Game();
  
  g.newGame(1);
  
  }


void draw() {
  background(0, 155, 0);
   g.drawCards(70, 450);
}


void mouseClicked() {

  s.shoeReset();
  g.newGame(1);
 
}
