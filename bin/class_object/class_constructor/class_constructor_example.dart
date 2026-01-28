// dart class constructor
/*
dart class name and constructor name => same
 */
class BankHolder {
  String name;
  int age;
  String address;

  // creation constructor
BankHolder(this.name, this.age, this.address) {
  print('Bank Holder name is = $name');
  print('Bank Holder age is = $age');
  print('Bank Holder address is = $address');
}
}
//creation class
void main() {
  BankHolder bankHolder = BankHolder('Tuhin', 22, 'Kushita');
}