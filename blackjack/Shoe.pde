class Shoe {
  /* 
   TODO:
   Make x decks
   Deal a card
   Set # of unused cards
   
   Reset/shuffle
   */

  private ArrayList<Card> deck;


  public Shoe(int d) {
    deck = new ArrayList<Card>();
    for (int i = 1; i <= d; i++) {
      for (int b = i; b <= 13; b++) {
        deck.add(new Card( b, "clubs"));
        deck.add(new Card( b, "spades"));
        deck.add(new Card( b, "hearts"));
        deck.add(new Card( b, "diamonds"));
      }
    }
    println("done");
    println(deck.size());
  }

  public Card grabCard() {
    Card c = deck.remove(int(random(0, deck.size() - 1)));  
    return (c);
  }
}
