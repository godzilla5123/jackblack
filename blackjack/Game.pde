/*
 Game mechanics:
 Should run the following (remove when done):
 
 Reset and prepare for a new card round
 Get money
 Figure out how many hands are there
 Decides if there's a user input needed
 
 */
class Game {
  ArrayList<Hand> playerHand;
  Hand dealerHand;
  int playerBalance;

  public Game() {
    dealerHand = (new Hand(s.grabCard(), s.grabCard()));
    playerHand = new ArrayList<Hand>();
    playerBalance = 1000;
  }

// Resets game
  public void newGame() {
    playerHand.clear();
    dealerHand = (new Hand(s.grabCard(), s.grabCard()));
    playerHand.add(new Hand(s.grabCard(), s.grabCard()));
  }

// grabs a card
  public void grabCard(int h, ArrayList<Hand> theHand) {
    theHand.get(h).addCard(s.grabCard());
  }

//draws hands on screen
  public void drawCards(int handX, int handY) {
    dealerHand.dealerDrawHand(int(width * .47), int(height * .15));
    for (int i = 0; i <= playerHand.size() - 1; i++) {
      playerHand.get(i).drawHand(handX, handY);
      handX += 140;
    }
  }

// gets a hand
  public Hand getPlayerHand(int hand) {
    {
      return playerHand.get(hand);
    }
  }

// current gambling balance
  public int getPlayerBalance() {
    return playerBalance;
  }

// mmm casino time :DDDD
  public void betAndDeal(int betAmnt) {
    playerBalance = g.getPlayerBalance() - betAmnt;
    g.newGame();
  }

// checks if value of hand is 21
  public boolean isPlayerJackBlack(int i) {
    if (playerHand.get(i).getValue() == 21) {
      return true;
    } else 
    return false;
  }


// checks if a hand can hit 
  public boolean canHit(int i) {
    if (playerHand.get(i).getValue() > 21) {
      return true;
    } else
      return false;
  }

// hit me!
  public void hit(int i) {
    playerHand.get(i).addCard(s.grabCard());
  }
}
