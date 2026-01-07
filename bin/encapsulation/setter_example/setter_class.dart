// setter class
class SetterClass {
  // Private properties
  String _name ='';
  int? _age ;

  // get private value or read value
String get name => _name;
int? get age => _age;

// set private value or set and update value
set name (String value) => _name =value;
set age (int age ) {
  if(age > 50) {
    throw Exception('This is not support');
  }
  _age =age;
}
}