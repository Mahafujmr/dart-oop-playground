import 'animal_class.dart';
class Dog extends Animal  {
  int? age;


  void uuu() {
    print('Dog is Animal');
  }
}
// multilevel inheritance
class Fish extends Dog {
  String fishName = 'Katol';
  double price = 100;
}
