/*
Card class- loads cards and their IDs
*/

class Card {
  private PImage currentCard;
  private int cardX, cardY, cardID; 

  public Card(int cX, int cY, int cID) {
    cardX = cX;
    cardY = cY;
    cardID = cID;
  }
  
  public void drawCard() {
    currentCard = loadImage("card" + cardID);
    image(currentCard,cardX,cardY);
  }
  
}
