// dart oop=> encapsulation
import 'restaurant_class.dart';

void main() {
  Restaurant yourPack = Restaurant();
  yourPack.order('Pizza');
  print(yourPack.userId);
  yourPack.newValue = 1000;
  print(yourPack.userId);

}
