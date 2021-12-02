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
    for (int i = 0; i <= currentHandList.size() - 1; i++) {
      currentHandList.get(i).drawCard(x, y);
      x += 12;
      y -= 12;
    }
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
    println("the hand value is " + value);
    println("ace count: " + ace);
    return value;
  }
}
