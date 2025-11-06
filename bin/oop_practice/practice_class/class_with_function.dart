// creation class with function
void main() {
// ==> instance of class= object <==
VoterInfo voterInfo = VoterInfo();

// ==> object call function  <==
voterInfo.showResult();

}

// ==>  creation class <==
class VoterInfo {
  // String? name ; // after initialization value so use => null
  // String? fatherName;
  // int? age;
  // properties or attributes
  String name = 'Tuhin';
  String fatherName = 'MD.Tohidul Islam';
  int age = 22;

  // ==>  creation function <==
void showResult () {
  print('My Name is = $name');
  print('My Father Name is = $fatherName');

  print('My age is = $age');
}

}
