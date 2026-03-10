// this is super class
class Computer {
  // this is method
  void brand() {
    print('This is Hp Brand');
  }
}

// this is parent class => polymorphism - extends example
class Mobile extends Computer {
  // same method call
  @override
  void brand() {
    print('Readme Brand');
  }
}

void main() {
  // create mobile object
  Mobile mobile = Mobile();
  mobile.brand();
}