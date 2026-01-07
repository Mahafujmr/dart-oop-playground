// setter obejct
import 'setter_class.dart';
void main() {
  SetterClass setterClass = SetterClass();
  setterClass.name = 'Tuhin';
  print(setterClass.name);
  print('Age is = ${setterClass.age = 55}'); // not support this age
  setterClass.age = 20;
  print(setterClass.age);
}