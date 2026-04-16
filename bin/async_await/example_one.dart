// dart async and await
void main() {
  print(result());
  result().then((value){
    print(value);
  });
}

Future<int> result () async{
  print('tuhin');
 await Future.delayed(Duration(seconds: 3));
 return 6;
}

String show () {
  return "MR TUhin";
}