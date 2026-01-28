// animal object class
import 'cat_class.dart';
import 'dog_class.dart';
void main() {
  // cat object
  Cat cat = Cat();
  cat.name ='Tuhin';
  print('Cat name is = ${cat.name}');
  cat.colors= 'Red';
  cat.eat();

  // dog object
  Dog dog = Dog();
  dog.age = 22;
  print('Dog age is = ${dog.age}');
  dog.colors = 'Black';
  dog.eat();
  dog.uuu();



}