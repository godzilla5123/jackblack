/*
Card class- loads cards and their IDs
 */

class Card {
  private PImage pic;
  private int cardX, cardY;

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
    if (value == 10) {
      fileName = ("jack" + suit + ".GIF");
    } else if (value == 11) {
      fileName = ("queen" + suit + ".GIF");
    } else if (value == 12) {
      fileName = ("king" + suit + ".GIF");
    } else if (value == 1) {
      fileName = ("ace" + suit + ".GIF");
    } else {
      fileName = value + suit + ".GIF";
    }


    pic = loadImage(fileName);
  }

  public void drawCard(int cX, int cY) {
    cardX = cX;
    cardY = cY;
    image(pic, cardX, cardY);
  }

  public int getValue() {
    if (value > 10) {
      return 10;
    } else {
      return value;
    }
  }
}
