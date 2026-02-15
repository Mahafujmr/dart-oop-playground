// dart class properties
/*
dart class properties => class value
 */
class Mobile{
  String ? mobileName;
  String ? band;
  double? price;
  //✅ class properties =>  mobileName | band | price ✅
}
void main() {
  Mobile mobile = Mobile();
  mobile.mobileName = 'Vivo';
  mobile.band = 'Vivo Band';
  mobile.price = 19373;

  print('Mobile name is = ${mobile.mobileName}');
  print('Mobile Band is = ${mobile.band}');
  print('Mobile price is = ${mobile.price}');
}