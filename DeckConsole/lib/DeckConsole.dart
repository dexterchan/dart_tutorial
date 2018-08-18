int calculate() {
  return 6 * 7;
}


class Deck{
  List<Card> cards;
  static const  ranks = ["Ace","Two","Three","Four","Five"];
  static const suits = ["Diamonds","Hearts","Clubs","Spades"];
  Deck(){

    cards = [];//new List();
    for (var suit in suits){
      for (var rank in ranks){
        var card = new Card(rank:rank,suit: suit );
        cards.add(card);
      }
    }
  }

  @override
  String toString() {


    return this.cards.toString();
  }

  shuffle(){
    this.cards.shuffle();
  }
  Iterable<Card> cardsWithSuit(String suit){
    var c=null;
    c = this.cards.where((card)=>(card.suit==suit));//Lambda expression
    return c;
  }

  List<Card> deal(int handSize){

    List<Card> hand = null;
    if(this.cards.length >= handSize) {
      this.cards.sublist(0, handSize);
    }else {
      hand = [];
    }
    return hand;
  }

  removeCard(String suit, String rank){
    this.cards.removeWhere((card)=> ( (card.suit==suit) && (card.rank==rank) ));
  }

}

class Card{
  String suit;
  String rank;
  Card({this.suit,this.rank});

  @override
  String toString() {
    // TODO: implement toString
    return "${this.rank} of ${this.suit}";
  }
}