// dart oop - Abstract
// abstract class
abstract class MobileUser {
  // abstract method
  void calling ();

  // normal method
void display() {
print('Show mobile meassge');
}
}
// call override - abstract
class Rahim extends MobileUser {
  @override
  void calling() {
    print('Calling your mobile');
  }

}

// call override - abstract
class Karim extends MobileUser{
  @override
  void calling() {
    print('Karim call Rahim');
  }


}
// don't create abstract object

// main method
void main() {
  MobileUser mobileUser ;

  mobileUser = Rahim();
  mobileUser.calling();

  mobileUser= Karim();
  mobileUser.calling();
}