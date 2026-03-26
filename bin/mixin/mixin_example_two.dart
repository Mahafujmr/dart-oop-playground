abstract class Animal {
  String name;
  double speed;
  // constructor
Animal (this.name, this.speed);

// abstract method
void run ();
}

// use mixin
mixin GoRun on Animal {
 @override
  void run() {
   return
   print('$name is animal and speed is $speed');
 }
}

// other class
class Dog extends Animal with GoRun {
    Dog(super.name, super.speed);
}

void main() {
  Dog dog = Dog('Cow', 120.3);
  dog.run();
}