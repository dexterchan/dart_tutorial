import 'package:DeckConsole/DeckConsole.dart' as DeckConsole;

main(List<String> arguments) {
  print('Hello world: ${DeckConsole.calculate()}!');

  var deck = new DeckConsole.Deck();
  deck.shuffle();
  print(deck);

  deck.removeCard("Spades", "Two");
  print(deck);


  var findSuit="Hearts";
  print("Find all suit = ${findSuit}");
  Iterable<DeckConsole.Card>  c = deck.cardsWithSuit(findSuit);
  print("Found all suit with ${findSuit}");
  print(c);

  var handSize=20;

  print(deck.deal(handSize));
  print(deck);


}
