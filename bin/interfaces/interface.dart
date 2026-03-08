class Car {
  String color = 'Red';
  void carColor () {
    print('This car color is Red');
  }

  void carName () {
    print("This car name is Toyto ");
  }
}
// create another class
class Bike {
  void bikeColor (){
    print('Bike color is Blue');
  }
}

// this is implements - interface
// and multiple class in interface
class CarHouse implements Car , Bike {
  @override
  void carColor() {
    // TODO: implement carColor
    print('Car color is $color');
  }

  @override
  void carName() {
    print('Car is UnKnown');
  }

  @override
  String color ='Red';

  @override
  void bikeColor() {
    // TODO: implement bikeColor
    print("Bike color is $color");
  }

}
// main function
void main() {
  Car car = Car();
  car.carColor();

  CarHouse carHouse = CarHouse();
  carHouse.carColor();
  carHouse.carName();
  carHouse.bikeColor();
}