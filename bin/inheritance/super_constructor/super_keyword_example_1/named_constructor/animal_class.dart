class Animal {
  String? color;
  Animal () {
    print('Animal ');
    print('Animal color is $color');
  }
  // create named constructor
Animal.myHome(int age) {
    print('This is named constructor ');
    print('Named constructor age is $age');
}
}
class Dog extends Animal {
  String ? name ;
  // call named constructor
  Dog (String color, this.name) : super.myHome(22)  {
    print('Dog is best Animal');
    print('Dog color is $color');
    print('Dog name is $name');

  }
}