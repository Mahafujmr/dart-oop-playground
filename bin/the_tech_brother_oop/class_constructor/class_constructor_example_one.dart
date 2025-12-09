// dart class constructor
void main() {

// create list
  List<Student> name =[
  Student('Khan',22),
  Student('Rahim Khan',25),
  Student('Karim Khan',30),
  ];
  // use for each loop
  name.forEach((result){
    print('Show name = ${result.name} | show age = ${result.age}');
  });
  for(var result in name ){
    print('student name is = ${result.name} and age is = ${result.age
    }');
  }

}
class Student {
  String ? name;
  int ? age;

  // create constructor
  Student(String name,int age) {
    print('Show Constructor');
  // print(name);
    this.name =name;
    this.age = age;
  }
  // create methods
disPlayResult () {
  print('----------------');
  print('Student name is $name');
  print('Student age is $age');
  print('----------------');
}
}