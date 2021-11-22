/*
Card class- loads cards and their IDs
 */

class Card {
  private PImage pic;
  //public Boolean doubled;
  //private int cardX, cardY, cardID;

  private int value;
  private String suit;

  public Card(int val, String su) {
    //cardID = cID;
    value = val;
    suit = su;

    loadCorrectImage();
  }

  private void loadCorrectImage() {
    String fileName;   
    if (suit == 10) {
      fileName = ("jack" + suit);
    } else if (suit == 11) {
      fileName = ("queen" + suit);
    } else if (suit == 12) {
      fileName = ("king" + suit);
    } else if (suit == 1) {
      fileName = ("ace" + suit);
    } else {
      fileName = value + suit;
    }


    pic = loadImage(fileName);
  }

  public void drawCard(int cX, int cY) {
    //cardX = cX;
    //cardY = cY;
    //currentCard = loadImage("card" + cardID + ".gif");
    //image(currentCard, cardX, cardY);
  }

  public int getValue() {
  }
}
