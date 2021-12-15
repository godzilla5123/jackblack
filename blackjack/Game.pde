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

  public void newGame() {
    playerHand.clear();
    dealerHand = (new Hand(s.grabCard(), s.grabCard()));
    playerHand.add(new Hand(s.grabCard(), s.grabCard()));
  }

  public void grabCard(int h, ArrayList<Hand> theHand) {
    theHand.get(h).addCard(s.grabCard());
  }



  public void drawCards(int handX, int handY) {
    // draws player hands
    dealerHand.dealerDrawHand(int(width * .47), int(height * .15));
    for (int i = 0; i <= playerHand.size() - 1; i++) {
      playerHand.get(i).drawHand(handX, handY);
      handX += 140;
    }
  }

  public Hand getPlayerHand(int hand) {
    {
      return playerHand.get(hand);
    }
  }

  public int getPlayerBalance() {
    return playerBalance;
  }


  public void betAndDeal(int betAmnt) {
    playerBalance = g.getPlayerBalance() - betAmnt;
    g.newGame();
  }

  public boolean isPlayerJackBlack(int i) {
    if (playerHand.get(i).getValue() == 21) {
      return true;
    } else 
    return false;
  }

  public boolean canHit(int i) {
    if (playerHand.get(i).getValue() > 21) {
      return true;
    } else
      return false;
  }

  public void hit(int i) {
    playerHand.get(i).addCard(s.grabCard());
  }
}
