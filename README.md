## Dart OOP Ground
##### ✅ আমি এই এখানে  Dart oop এর concept গুলো ধারাবাহিক ভাবে আলোচনা করবো .
##### ✅ Dart oop এর যে যে টপিক গুলো নিয়ে আলোচনা করবো সেগুলোর Folder Structure নিচে দেওয়া হলো
### Folder Structure
````dart
dart_oop/
│
├── lib/
│   ├── main.dart
│   ├── class_object/
│   │     └── person.dart
│   │
│   ├── oop_pillars/
│   │     ├── inheritance.dart
│   │     ├── encapsulation.dart
│   │     ├── polymorphism.dart
│   │     └── abstraction.dart
│   │
└── README.md

````
#### সবগুলো টপিক এর আলাদা আলাদা README File থাকবে যেগুলো বিশেষ করে নতুন দের অনেক উপকার হবে .
### ✅টপিক => Class and Object 

#### ✅Class কাকে বলে ?
**Class হলো একটি Blueprint / Design / Template**, যার সাহায্যে Object তৈরি করা হয়।

একটি Class এর ভিতরে থাকে—

- **Properties (variable / data)**
- **Methods (function / behavior)**
#### class Syntax
````dart
class ClassName {
  // properties (variables)
  
  // constructor (optional)

  // methods (functions)
}

````
### ✅Class- Properties (variable / data)
Class এর ভিতরে যে data থাকে তাকে Property / Attribute বলে।
````dart
class UserForm {
  // creation property
  String name;
  int age;
  String password;
  String? userName;
}
````
**এখানে name, age, password, userName- UserForm class এর Properties**
### ✅Class- static keyword
#### 👉 **Static = Class এর জিনিস, Object এর না।**
**পুরো ক্লাসের জন্য একটি মাত্র কপি থাকবে। সবাই সেই একটাকেই share করবে।**
**`static` হলো এমন property বা method যেটা Object এর না, Class-এর হয়।**
````dart
static String nationality = 'Bangladeshi';
````
Object না বানিয়ে call করা যায়. Class এর নাম দিয়ে Call করা যাবে.

### ✅Class -constructor 
- Constructor হলো একটি **special function** যা **class থেকে object তৈরি করার সময় automatically run** হয়।
- কাজে লাগে: **object কে ready করা এবং properties auto set করা**।
````dart
class UserForm {
  // creation property
  String name;
  int age;
  String password;
  String? userName;
  static String nationality = 'Bangladeshi';

  // creation class constructor
  UserForm(this.name, this.age, this.password, [this.userName]);
}
````
#### Class name and Constructor name একই হবে .

### ✅Class- methods
#### 👉 **Class method = Class এর ভিতরে থাকা function**

যেটা Object এর behavior (ব্যবহার/কাজ) define করে।

### সহজ ভাষায়:

**Property = Data (কি আছে)**

**Method = Behavior (কি করতে পারে)**
````dart
class UserForm {
  // creation property
  String name;

  void showOutput() {
    print('User name is = $name');
  }
}
````
#### এখানে showOutput হচ্ছে Class এর methods
### ✅ Object কি?

- **Object** হলো **class-এর real instance**।
- Class = blueprint / design
- Object = সেই blueprint অনুযায়ী তৈরি বাস্তব item
- Object এর মধ্যে থাকে **properties + methods**, যা class এ define করা হয়।

#### Object Syntax
````dart
void main() {
  UserForm userOne = UserForm('Tuhin', 22, '+tuhin120A');
}
```` 
**আমার class, properties, static keyword, constructor, methods and object -কী এবং এর ব্যবহার দেখেছি, এখন আমরা সবগুলো দিয়ে একটি পুরো উদাহরণ দেখবো** .
#### Full Example :
````dart
class UserForm {
  // creation property
  String name;
  int age;
  String password;
  String? userName;
  static String nationality = 'Bangladeshi';

  // creation class constructor
  UserForm(this.name, this.age, this.password, [this.userName]);

  // creation methods
 void showOutput () {
   print('User name is = $name');
   print('User other name is = ${userName ?? 'Not Important'}');
   print('User age is = $age');
   print('User password is = $password');
 }
}
// creation object
void main() {
  UserForm userOne = UserForm('Tuhin', 22, '+tuhin120A');
  print('User Nationality is = ${UserForm.nationality}');
  userOne.showOutput();
  // creation other object
  print('✅====================================✅');
  UserForm userTwo = UserForm('Taskin', 23, 'TT123*&mm','@taskin' );
  userTwo.showOutput();
}
````
