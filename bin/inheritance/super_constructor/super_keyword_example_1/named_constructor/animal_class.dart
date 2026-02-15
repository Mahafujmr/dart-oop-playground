class Animal {
  String? color;
  Animal (this.color) {
    print('Animal ');
    print('Animal color is $color');
  }
}
class Dog extends Animal {
  String ? name ;
  Dog (String color, this.name) : super ('Red') {
    print('Dog is best Animal');
    print('Dog color is $color');
    print('Dog name is $name');

  }
}