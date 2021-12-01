
ArrayList<Hand> hands;
//ArrayList<Shoe> shoes;

// for singleplayer - replace hands with h and delete all 
//Hand h;
Shoe s;

String suits[] = {"clubs", "hearts", "spades", "diamonds"};

void setup() {
  size(1200, 900);
  surface.setTitle("Casino");
  //shoes = new ArrayList<Shoe>();
  //cards = new ArrayList<Card>();
  hands = new ArrayList<Hand>();
  s = new Shoe(3);
  for (int i = 0; i < 7; i = i+1) {
    hands.add(new Hand(s.grabCard(), s.grabCard()));
    hands.get(i).addCard(s.grabCard());
  }
}

void draw() {
  background(0, 155, 0);
  int handX = 70;
  int handY = 450;
  for (int i = 0; i <= hands.size() - 1; i++) {
    hands.get(i).drawHand(handX, handY);

    handX += 140;
  }
}

void mouseClicked() {
  hands.get(0).getValue();
}
