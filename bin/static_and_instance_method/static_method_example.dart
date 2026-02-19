class Car {
  // This is static variable
  static String ? name;
  static int ? age;

  // This is static method
  static void display( String name, int age) {
    print('this is Static method');
    print('Student name is = $name');
    print('Student age is = $age');
  }


}

void main() {
  Car car = Car();
  Car.display('tuhin',22);
}