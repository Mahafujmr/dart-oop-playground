void main() {
 Person person = Person('Tuhin', Gender.male);
  // use switch case
  switch (person.gender) {
    case  Gender.male:
      print('He is man');

    case Gender.female:
      print('She is Woman');

    case Gender.other:
      print('She is other');
    break;
    }
}

// creation enum
enum Gender {
  male,
  female,
  other,
}

// creation class
class Person {
  String name;
  Gender gender;
  Person (this.name, this.gender);
  
  // crate method
void display() {
  print('The gender name is = $name');
}

}