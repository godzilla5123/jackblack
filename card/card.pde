ArrayList<Card> cards;
void setup() {
  size(900, 900);
  surface.setTitle("Casino");

  cards = new ArrayList<Card>();
  for (int i = 0; i < 7; i = i+1) {
    cards.add( new Card(int(random(53, width - 53)), int(random(97, height - 97)), int(random(0, 52))));
  }
}

void draw() {
  background(0,255,0);
  for (int i = 0; i <= cards.size() - 1; i++) {
    cards.get(i).drawCard();
  }
}
