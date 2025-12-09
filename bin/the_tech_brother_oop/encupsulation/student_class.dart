// dart class student
class Student {
  // this is private variable use = _ underscore
  String? _name;
  int ? _age;
  // create constructor
//Student(this._name, this._age);

  // getter - use access private value or return
  String? get newName => _name;
  int? get newAge => _age;

  // setter - use private value update or set
  set newValue(String name){
    _name =name;
  }
// use setter
  set newAgeAdd(int age){
    if(age> 40){
      print('right');
    }else{
      print('Not right');
    }
  }


// create methods
void displayResult() {
  print('Student name is = $_name');
  print('Student age is = $_age');

}
}