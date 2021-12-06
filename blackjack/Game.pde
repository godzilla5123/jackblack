/*
 Game mechanics:
 Should run the following (remove when done):
 
 Reset and prepare for a new card round
 Get money
 Figure out how many hands are there
 Decides if there's a user input needed
 
 */
class Game {
  ArrayList<Hand> hands;
  int playerBalance;

  public Game() {
    hands = new ArrayList<Hand>();
    playerBalance = 1000;
  }

  public void newGame(int playerCount) {
    hands.clear();

    for (int i = 0; i < playerCount + 1; i = i+1) {
      hands.add(new Hand(s.grabCard(), s.grabCard()));
    }
  }

  public void grabCard(int h) {
    hands.get(h).addCard(s.grabCard());
  }
  
  

  public void drawCards(int handX, int handY) {
    // draws player hands
    hands.get(0).dealerDrawHand(int(width * .47), int(height * .15));
    for (int i = 1; i <= hands.size() - 1; i++) {
      hands.get(i).drawHand(handX, handY);
      handX += 140;
    }
  }

 public int getHandCount() {
   return hands.size() - 1;
 }
  public int getPlayerBalance() {
    return playerBalance;
  }
}
