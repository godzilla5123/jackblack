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
  private int value = 0;
  public Hand(Card c1, Card c2) {
    currentHandList = new ArrayList<Card>();
    currentHandList.add(c1);
    currentHandList.add(c2);
  }

  public void drawHand(int x, int y)
  {
    for (int i = 0; i <= cards.size() - 1; i++) {
      cards.get(i).drawCard(x, y);
      x += 15;
      y -= 15;
    }
  }

  public int getValue()
  {
    int ace = 0;
    value = 0;
    for (int i = 0; i <= cards.size() - 1; i++) {
      if (cards.get(i).getValue() > 1) {
        value += cards.get(i).getValue();
      } else {
        ace++;
      }
    }
    if (ace > 0) {
      if (value > 11) {
        for (int i = 0; i <= ace; i++) {
          value++;
        }
      } else if (value < 11 && ace == 1) {
        value += 11;
      }
    }
  
  println("the hand value is " + value);
  return value;
}
}
