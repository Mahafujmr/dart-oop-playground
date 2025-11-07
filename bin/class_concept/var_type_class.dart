// dart var type class
void main() {
  // creation instance object - this type is var
 var mobileShoop = Mobile(); // type var
 mobileShoop.name = 'Realme';
 mobileShoop.model = 'Readmi';
 mobileShoop.price = 10000;
 print('This mobile name is = ${mobileShoop.name}');
 print('Mobile Model is = ${mobileShoop.model}');
 print('Mobile price = ${mobileShoop.price}');
print('<=========================>');
 // crate another instance or object- type is var
  var mobileModel = Mobile();
  mobileModel.name='Vivo';
  mobileModel.model='Vivo LTD';
  mobileModel.price=20000;
  print('Mobile name is = ${mobileModel.name}');
  print('Mobile Model  is = ${mobileModel.model}');
  print('Mobile Price is = ${mobileModel.price}');
}

//creation class
class Mobile {
 late String name;
 late String model;
 late int price;
}