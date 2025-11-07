// class creation multiple object
void main() {
// creation class instance or object
PlayerInfo playerInfo = PlayerInfo(); // playerInfo is object name

// call object and get value
playerInfo.name ='Tamim';  // most  initialization value
playerInfo.position = 'Batter';
playerInfo.age = 22;
//object call function
  playerInfo.resultDisplay();
print('<=====================>');
// create another object or class instance
PlayerInfo crickterInfo = PlayerInfo(); // crickteInfo is this object
crickterInfo.name ='Taskin';
crickterInfo.position ='Bowler';
crickterInfo.age =25;
crickterInfo.resultDisplay();
print('<=====================>');

}


// creation class
class PlayerInfo {
  // this is null able value - cause after add value
  // This is properties or attributes
  String? name ;
  String? position;
  int? age;

  // creation function
void resultDisplay () {
  // class all attributes call this function
  print('Player Name is = $name');
  print('Player Address is = $position');
  print('Player age is = $age');
}
}