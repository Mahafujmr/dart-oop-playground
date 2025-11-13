// dart static class example
class Mobile {
  late String name;
  late int price ;
  // crate global variable use => static
  static String band = 'Vivo';
  // creation methods
void showResult () {
  print('Mobile name is = $name');
  print('Mobile Price is = $price');

}
// static methods create
static void mobileCharge() {
  print('Mobile charge 100%');
}
}
// creation class instance
void main() {
  Mobile mobile = Mobile();
  mobile.name = 'Vivo';
  mobile.price = 20000;
  mobile.showResult();
  // access class name and static
  print(Mobile.band);
  // static or global variable access => class access static methods
  Mobile.mobileCharge();
}