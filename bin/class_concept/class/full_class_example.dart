// dart full class example
// this class use properties, methods , object
class Home{
  String? name;
  String? address;
  int? roomNumber;
  // name, address,roomNumber = this is class properties
// now creation methods
void homeDisplay() {
  print('My Home name is = $name');
  print('My Home address is = $address');
  print('My Home room Number  is = $roomNumber');
}
}
// creation object
void main() {
  Home home = Home();
  // home is object
  // initialize class properties value
  home.name= 'Family Home';
  home.address= 'Kushtia, Pragpur';
  home.roomNumber= 4;
  // access class methods
  home.homeDisplay();
}
