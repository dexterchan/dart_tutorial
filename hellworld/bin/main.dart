import 'package:hellworld/hellworld.dart' as hellworld;

import 'package:hellworld/Person.dart' as PersonPackage;

main(List<String> arguments) {
  print('Hello world: ${hellworld.calculate()}!');

  var name = findMyName();
  print ("Hello, ${name}");


  var p = new PersonPackage.Person("Winnie","the Pig");
  //p.firstName="Winne The Pig";
  p.printName();

}


String findMyName(){
  return "pigpig";
}