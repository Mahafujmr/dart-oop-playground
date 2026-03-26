// mixin example
mixin Mixin1{
  void carColor() {
     print('Car color is Red');
  }
}

mixin Mixin2{
  void carPrize() {
    print('Car prize is 10000');
  }
}

class Car with Mixin1,Mixin2 {

}
void main() {
  Car car =Car();
  car.carColor();
  car.carPrize();
}