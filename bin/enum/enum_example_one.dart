// dart oop - Topic name is => Enum
enum Weather {
  sunny,
  rainy,
  cloudy;


}

void main() {
  // creation object
 Weather weather = Weather.sunny;
 if(weather == Weather.cloudy) {
   print('The sky is = cloudy');
 } else {
   print('This Result is non valid');
 }
  // creation object
   Weather weatherTime = Weather.rainy;
 if(weather == Weather.cloudy){
   print('Success Result ');
 } else {
   print('Not Success Result');
 }
}