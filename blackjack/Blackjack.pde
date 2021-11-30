ArrayList<Card> cards;
ArrayList<Hand> hands;
ArrayList<Shoe> shoes;
String suits[] = {"clubs", "hearts", "spades", "diamonds"};

void setup() {
  size(900, 900);
  surface.setTitle("Casino");
  shoes = new ArrayList<Shoe>();
  cards = new ArrayList<Card>();
  hands = new ArrayList<Hand>();
  shoes.add( new Shoe(3));
  for (int i = 0; i < 3; i = i+1) {
    hands.add(new Hand(shoes.get(0).grabCard(), shoes.get(0).grabCard()));
  }
}

void draw() {
  background(0, 255, 0);
  int handX = 70;
  int handY = 450;
  for (int i = 0; i <= hands.size() - 1; i++) {
    hands.get(i).drawHand(handX, handY);

    handX += 120;
  }
}

void mouseClicked() {
  hands.get(0).getValue();
}
