/*
Hand class- shows and processes the hand of Blackjack
 <<<<<<< HEAD
 
 TODO:
 Make a hand of 2 cards
 Add and display the hand on screen
 Make a total number and display
 
 
 */

class Hand {
  private ArrayList<Card> currentHandList;

  public Hand(Card c1, Card c2) {
    currentHandList = new ArrayList<Card>();
    currentHandList.add(c1);
    currentHandList.add(c2);
  }
  public void addCard(Card c) {
    currentHandList.add(c);
  }

  public void drawHand(int x, int y)
  {
    drawCard(x, y);
  }

  public void dealerDrawHand(int x, int y) {
    if (currentHandList.size() == 2) {
      currentHandList.get(0).hidden = true;
    } else {currentHandList.get(0).hidden = false;}
    drawCard(x, y);
  }

  public int getValue()
  {
    int ace = 0;
    int value = 0;
    for (int i = 0; i <= currentHandList.size() - 1; i++) {
      if (currentHandList.get(i).getValue() != 1) {
        value += currentHandList.get(i).getValue();
      } else {
        value++;
        ace++;
      }
    }
    if (ace > 0) {
      if (value <= 11) {
        value += 10;
      }
    }

    return value;
  }

  void drawCard(int x, int y) {
    for (int i = 0; i <= currentHandList.size() - 1; i++) {
      currentHandList.get(i).drawCard(x, y);
      x += 14;
      y += 14;
    }
    fill(0);
    textSize(26);
    text(getValue(), x, y- 35);
  }
}
