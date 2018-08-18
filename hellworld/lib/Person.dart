class Person{
  String firstName;
  String lastName;

  //Shortcut
  Person(this.firstName,this.lastName);
  /*
  Person(String name){
    this.firstName=name;
  }*/

  printName(){
    print ("${this.firstName} ${this.lastName}");
  }

}