ArrayList<Card> cards;
ArrayList<Hand> hands;
String suits[] = {"clubs", "hearts", "spades", "diamonds"};

void setup() {
  size(900, 900);
  surface.setTitle("Casino");

  cards = new ArrayList<Card>();
  for (int i = 0; i < 3; i = i+1) {
    cards.add( new Card(int(random(1,12)), suits[int(random(0,3))] ) );
  }
  hands = new ArrayList<Hand>();
  int deckCard = 0;
  for (int i = 0; i < (cards.size() / 2); i = i+1) {
    hands.add( new Hand(cards.get(deckCard), cards.get(deckCard++)));
    deckCard += 2;
  }
}

void draw() {
  background(0, 255, 0);
  int handX = 50;
  int handY = 450;
  for (int i = 0; i <= hands.size() - 1; i++) {
    hands.get(i).drawHand(handX,handY);
    
    handX += 120;
  }
}

void mouseClicked() {
  hands.get(0).getValue();
}
