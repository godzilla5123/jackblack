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
  
  public Game() {
    hands = new ArrayList<Hand>();
  }

  public void newGame(int playerCount) {
   // creates 14 hands, to be fixed
    for (int i = 0; i < playerCount; i = i+1) {
      hands.add(new Hand(s.grabCard(), s.grabCard()));
    }
  }
  
  
  
  public void drawCards(int handX, int handY) {
    // draws player hands
    hands.get(0).drawHand(int(width * .47), int(height * .15));
   for (int i = 1; i <= hands.size() - 1; i++) {
    hands.get(i).drawHand(handX, handY);
    handX += 140;
    if (handX > 1100 + 30) {
      handY += 140;
      handX = 30;
    }
  }
  }
}
