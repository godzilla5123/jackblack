import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class blackjack extends PApplet {


Shoe s;
Game g;


public void setup() {
  
  surface.setTitle("Casino");
  s = new Shoe(4);
  g = new Game();
  
  g.newGame();
  
  }


public void draw() {
  background(0, 155, 0);
   g.drawCards(70, 450);
}


public void mouseClicked() {

  //s.shoeReset();
  g.newGame();
 
}

public void keyPressed() {
 if (key == 'r') {
  s.shoeReset();
 }
}
/*
Card class- loads cards and their IDs
 */

class Card {
  private PImage pic;
  private int cardX, cardY;
  private String fileName; 
  private int value;
  private String suit;
  private Boolean hidden;

  public Card(int val, String su) {
    //cardID = cID;
    value = val;
    suit = su;
    hidden = false;
    
  }



  private void loadCorrectImage() {
    if (hidden) {
      fileName = "back1.GIF";
    } else if (value == 11) {
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
    loadCorrectImage();
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
    dealerHand.dealerDrawHand(PApplet.parseInt(width * .47f), PApplet.parseInt(height * .15f));
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

  public void hit(int i) {
    playerHand.get(i).addCard(s.grabCard());
  }
}
class Shoe {
  /* 
   TODO:
   Make x decks
   Deal a card
   Set # of unused cards
   
   Reset/shuffle
   */

  private ArrayList<Card> deck;
  private int deckLength;

  public Shoe(int d) {
    deckLength = d;
    shoeReset();
  }

  public int cardsLeft()
  {
    return deck.size();
  }

  public Card grabCard() {
    Card c = deck.remove(PApplet.parseInt(random(0, deck.size() - 1)));  
    return (c);
  }

  public void shoeReset()
  {
    deck = new ArrayList<Card>();
    for (int i = 1; i <= deckLength; i++) {
      for (int b = i; b <= 13; b++) {
        deck.add(new Card( b, "clubs"));
        deck.add(new Card( b, "spades"));
        deck.add(new Card( b, "hearts"));
        deck.add(new Card( b, "diamonds"));
      }
    }
    println("done");
  }
}
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

  public Hand(Card c1, Card c2) {
    currentHandList = new ArrayList<Card>();
    currentHandList.add(c1);
    currentHandList.add(c2);
  }
  public void addCard(Card c) {
    currentHandList.add(c);
  }

  public void drawHand(int x, int y)
  {
    drawCard(x, y);
  }

  public void dealerDrawHand(int x, int y) {
    if (currentHandList.size() == 2) {
      currentHandList.get(0).hidden = true;
    } else {currentHandList.get(0).hidden = false;}
    drawCard(x, y);
  }

  public int getValue()
  {
    int ace = 0;
    int value = 0;
    for (int i = 0; i <= currentHandList.size() - 1; i++) {
      if (currentHandList.get(i).getValue() != 1) {
        value += currentHandList.get(i).getValue();
      } else {
        value++;
        ace++;
      }
    }
    if (ace > 0) {
      if (value <= 11) {
        value += 10;
      }
    }

    return value;
  }

  public void drawCard(int x, int y) {
    for (int i = 0; i <= currentHandList.size() - 1; i++) {
      currentHandList.get(i).drawCard(x, y);
      x += 14;
      y += 14;
    }
    fill(0);
    textSize(26);
    text(getValue(), x, y- 35);
  }
}
  public void settings() {  size(1200, 900); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "blackjack" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
