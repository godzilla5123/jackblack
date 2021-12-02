/*
Card class- loads cards and their IDs
 */

class Card {
  private PImage pic;
  private int cardX, cardY;
  private String fileName; 
  private int value;
  private String suit;
  //private Boolean hidden = false;
  
  public Card(int val, String su) {
    //cardID = cID;
    value = val;
    suit = su;
        loadCorrectImage();
  }
  //public Card(int val, String su, Boolean h) {
  //  //cardID = cID;
  //  value = val;
  //  suit = su;
  //  hidden = h;

//    loadCorrectImage();
//  }

  private void loadCorrectImage() {
    //if (hidden) {
    // fileName = "back1.GIF";
    //} else 
    if (value == 11) {
      fileName = ("jack" + suit + ".GIF");
    } else if (value == 12) {
      fileName = ("queen" + suit + ".GIF");
    } else if (value == 13) {
      fileName = ("king" + suit + ".GIF");
    } else if (value == 1) {
      fileName = ("ace" + suit + ".GIF");
    } else {
      fileName = value + suit + ".GIF";
    }
  }

  public void drawCard(int cX, int cY) {
    pic = loadImage(fileName);
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
