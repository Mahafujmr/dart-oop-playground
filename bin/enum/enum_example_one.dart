// dart oop - Topic name is => Enum
enum Weather {
  sunny,
  rainy,
  cloudy,
}

void main() {
 Weather weather = Weather.sunny;
 if(weather == Weather.cloudy) {
   print('The sky is = cloudy');
 } else {
   print('This Result is non valid');
 }
}