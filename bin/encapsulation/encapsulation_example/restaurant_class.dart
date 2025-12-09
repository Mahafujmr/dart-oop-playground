class Restaurant{
  // property
   int _id = 234;
  // access private variable / get= access private variable
  int get userId => _id;
  // new value add setter
  set newValue (int value) {
    _id = value;
  }


  void order(String item) {
    print('$item is ready');
    print('$item is Review');
    // call methods
    _process(item);
    _redayPercel(item);


  }
  // this is private methods use (underscore _ )
  void _process(String item) {
    print('$item is process');
  }
  // this is private methods (underscore _ )
  void _redayPercel (String item){
    print('$item is Pack');
  }



}