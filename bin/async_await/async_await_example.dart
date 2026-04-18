
void main() {
  car();
}

// async await
void car()  async{
  print('Your name is Tuhin');
 await Future.delayed(Duration(seconds: 4));
  print('Submit your name :');
  print('Your name is TT');
}