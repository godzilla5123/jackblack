ArrayList<Card> cards;
void setup() {
  size(900, 900);
  surface.setTitle("Casino");

  cards = new ArrayList<Card>();
  for (int i = 0; i < 3; i = i+1) {
    cards.add( new Card(int(random(40, width - 40)), int(random(40, height - 40)), int(random(0, 52))));
  }
}

void draw() {
  background(0,255,0);
  for (int i = 0; i <= cards.size() - 1; i++) {
    cards.get(i).drawCard();
  }
}
