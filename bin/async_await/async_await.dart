import 'dart:io';
void main() async{
  result();
}

// function
void result() async{
  print('Wait 3 second');
  await Future.delayed(Duration(seconds: 3));
  print('Add Your name');
}