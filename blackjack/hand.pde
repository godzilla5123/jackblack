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
  //private int handTotal, cardCount;
  //private int cardSelection;

  public Hand(Card card1, Card card2) {
    // TODO: initialize list

    currentHandList.add(card1);
    currentHandList.add(card2);
  }

//  //public void initialHand(int startingX, int startingY) {
//  //  cardSelection = int(random(0, deck.length - 1));
//  //  print(cardSelection);
//  //  deck.splice(cardSelection, cardSelection);
//  //  cards.add(new Card(startingX, startingY, deck[cardSelection]));
//  //  cardSelection = int(random(0, deck.length - 1));
//  //  print(cardSelection);
//  //  deck.splice(cardSelection, cardSelection);
//  //  cards.add(new Card(startingX + 25, startingY - 25, deck[cardSelection]));
//  //}

//  public void drawHand(int x, int y)
//  {
//  }

//  public int getValue()
//  {
//    int value = 0;
//    for (int i = 0; i > currentHandList.size() - 1; i ++) {
//      if ( currentHandList.get(i).cardID == 2 || currentHandList.get(i).cardID == 14 || currentHandList.get(i).cardID == 27 || currentHandList.get(i).cardID == 40) {
//        value += 2;
//      } else if ( currentHandList.get(i).cardID == 3 || currentHandList.get(i).cardID == 15 || currentHandList.get(i).cardID == 28 || currentHandList.get(i).cardID == 41) {
//        value += 3;
//      } else if ( currentHandList.get(i).cardID == 4 || currentHandList.get(i).cardID == 16 || currentHandList.get(i).cardID == 29 || currentHandList.get(i).cardID == 42) {
//        value += 4;
//      } else if ( currentHandList.get(i).cardID == 5 || currentHandList.get(i).cardID == 17 || currentHandList.get(i).cardID == 30 || currentHandList.get(i).cardID == 43) {
//        value += 5;
//      } else if ( currentHandList.get(i).cardID == 6 || currentHandList.get(i).cardID == 18 || currentHandList.get(i).cardID == 31 || currentHandList.get(i).cardID == 44) {
//        value += 6;
//      } else if ( currentHandList.get(i).cardID == 7 || currentHandList.get(i).cardID == 19 || currentHandList.get(i).cardID == 32 || currentHandList.get(i).cardID == 45) {
//        value += 7;
//      } else if ( currentHandList.get(i).cardID == 8 || currentHandList.get(i).cardID == 20 || currentHandList.get(i).cardID == 33 || currentHandList.get(i).cardID == 46) {
//        value += 8;
//      } else if ( currentHandList.get(i).cardID == 9 || currentHandList.get(i).cardID == 15 || currentHandList.get(i).cardID == 28 || currentHandList.get(i).cardID == 41) {
//        value += 9;
//      } else if ( currentHandList.get(i).cardID == 4 || currentHandList.get(i).cardID == 16 || currentHandList.get(i).cardID == 29 || currentHandList.get(i).cardID == 42) {
//        value += 10;
//      }
//    }
  }
