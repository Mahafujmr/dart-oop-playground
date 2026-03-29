enum Facebook {
  success,
  loading,
  error,
}

// create class
class Account {
  String userName;
  Facebook facebook;
  Account(this.userName, this.facebook);
}

void main() {
  Account account = Account('Tuhin',Facebook.error);
  switch (account.facebook){
    case Facebook.success:
    print('login success');

    case Facebook.error:
      print('Login error');

    case Facebook.loading:
      print('Login loading');
    break;



  }
}