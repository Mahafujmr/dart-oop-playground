## Dart OOP Ground
##### ✅ আমি এই এখানে  Dart oop এর concept গুলো ধারাবাহিক ভাবে আলোচনা করবো .
##### ✅ Dart oop এর যে যে টপিক গুলো নিয়ে আলোচনা করবো সেগুলোর Folder Structure নিচে দেওয়া হলো
### Folder Structure
````dart
dart_oop/
│
├── bin/
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
### 📘 Dart OOP – Encapsulation


#### 🔒 Encapsulation (Dart OOP)

#### 1️⃣ Encapsulation কাকে বলে?

**Encapsulation** হলো Object Oriented Programming (OOP)-এর একটি গুরুত্বপূর্ণ ধারণা,
যেখানে একটি ক্লাসের ভেতরের ডাটা (variables/properties) **সরাসরি বাইরের কোড থেকে লুকিয়ে রাখা হয়**,
এবং সেই ডাটা ব্যবহার বা পরিবর্তন করার জন্য **নির্দিষ্ট ও নিরাপদ উপায়** (method / getter / setter) দেওয়া হয়।

👉 সহজ ভাষায় বলা যায়:

> **Encapsulation মানে হলো ডাটাকে নিরাপদ রাখা এবং সবাইকে ইচ্ছামতো পরিবর্তন করতে না দেওয়া।**

এর ফলে:

* ভুল ডাটা ঢোকা বন্ধ হয়
* কোড বেশি safe হয়
* ক্লাস ব্যবহার করা সহজ হয়

---

#### 2️⃣ Encapsulation-এ `private` এর কাজ কী?

Encapsulation করার সবচেয়ে গুরুত্বপূর্ণ অংশ হলো **private data**।

Dart-এ কোনো variable বা method কে **private** করতে হলে
তার নামের আগে `_` (underscore) ব্যবহার করা হয়।

#### `private` ব্যবহার করার কারণ:

* ক্লাসের ভেতরের গুরুত্বপূর্ণ ডাটা বাইরের কোড যেন সরাসরি পরিবর্তন করতে না পারে
* ডাটা পরিবর্তনের আগে আমরা নিজেরা check (validation) করতে পারি
* প্রোগ্রামে bug কম হয়

---

####  Simple Example (Beginner Friendly)

```dart
class Student {
  int _marks = 0; // private variable
```

এখানে `_marks` private,
মানে বাইরের কোড এটা সরাসরি পরিবর্তন করতে পারবে না।

---

#### ✅ Controlled Access using Method + Getter

```dart
  // getter: marks পড়ার জন্য
  int get marks => _marks;

  // method: marks সেট করার জন্য (validation সহ)
  void setMarks(int value) {
    if (value < 0 || value > 100) {
      print("Invalid marks");
    } else {
      _marks = value;
    }
  }
}
```

---

####  main() Function

```dart
void main() {
  var s = Student();

  s.setMarks(80);     // valid value
  print(s.marks);     // output: 80

  // s._marks = 200;  // ❌ Error (private, access করা যাবে না)
}
```

---

#### 📝 এখানে কী হচ্ছে? (সহজ ব্যাখ্যা)

* `_marks` → private হওয়ায় বাইরের কোড সরাসরি access করতে পারছে না
* `setMarks()` → marks সেট করার একমাত্র safe উপায়
* `marks` getter → শুধু পড়ার অনুমতি দিচ্ছে
* invalid value (০–১০০ এর বাইরে) ঢুকতে দিচ্ছে না

👉 এই পুরো process-টাই হলো **Encapsulation**।

---

#### ⭐ এক লাইনে মনে রাখার ট্রিক

> **Private data + Controlled access = Encapsulation**

---


### 🔐 Encapsulation — Getter

#### 1️⃣ Getter কী?

**Getter** হলো একটি special method
যেটা ব্যবহার করে আমরা **private variable-এর value পড়তে (read)** পারি
কিন্তু **পরিবর্তন (change)** করতে পারি না।

👉 সহজ কথায়:

> **Getter মানে হলো private ডাটা দেখার নিরাপদ দরজা।**

---

#### 2️⃣ Getter কেন দরকার?

Encapsulation-এ আমরা ডাটা `private` রাখি।
কিন্তু অনেক সময় সেই ডাটা **বাইরের কোডকে দেখাতে হয়**।

তখন আমরা ব্যবহার করি **Getter**।

Getter ব্যবহার করলে:

* ডাটা নিরাপদ থাকে
* বাইরের কোড value পরিবর্তন করতে পারে না
* শুধু read-only access পাওয়া যায়

---

#### 3️⃣ Getter-এর Syntax (Dart)

```dart
returnType get name => value;
```

👉 Example:

```dart
int get marks => _marks;
```

---

#### 4️⃣ Simple Example (Beginner Friendly)

```dart
class Student {
  int _marks = 75; // private variable

  // getter
  int get marks => _marks;
}

void main() {
  var s = Student();
  print(s.marks); // getter call হচ্ছে
}
```

---

#### 5️⃣ এখানে কী হচ্ছে? (সহজ ব্যাখ্যা)

* `_marks` → private, তাই সরাসরি access করা যাবে না
* `marks` → getter
* `s.marks` লিখলে → আসলে getter call হয়
* আমরা value **পড়তে পারছি**, কিন্তু change করতে পারছি না

❌ এটা করা যাবে না:

```dart
s._marks = 90; // Error
```

---

### 6️⃣ Getter-এর Real Use Case

#### 📌 Use Case 1: Read-Only Data

```dart
class BankAccount {
  double _balance = 500;

  double get balance => _balance;
}
```

👉 এখানে balance শুধু দেখা যাবে, পরিবর্তন করা যাবে না।
এটা খুব important **security reason** এর জন্য।

---

#### 📌 Use Case 2: Calculated Value Return করা

Getter শুধু variable না, **calculation করেও value দিতে পারে**।

```dart
class Rectangle {
  int width = 10;
  int height = 5;

  int get area => width * height;
}

void main() {
  var r = Rectangle();
  print(r.area); // 50
}
```

👉 `area` কোনো variable না,
কিন্তু getter ব্যবহার করে property-এর মতো ব্যবহার করা হচ্ছে।

---

#### 7️⃣ Getter কেন Encapsulation-এর অংশ?

কারণ:

* ডাটা private থাকে
* বাইরের কোড শুধু getter দিয়ে access করে
* ভিতরের implementation hide থাকে

👉 এটাই Encapsulation-এর মূল ধারণা।

---

#### এক লাইনে মনে রাখার কৌশল

> **Getter = private data safely read করার উপায়**




### 🔐 Encapsulation — Setter

#### 1️⃣ Setter কী?

**Setter** হলো একটি special method
যার মাধ্যমে আমরা **private variable-এর value পরিবর্তন (set)** করতে পারি
কিন্তু সেই পরিবর্তনটা হয় **নিয়ন্ত্রণ (control) ও validation সহ**।

👉 সহজ ভাষায়:

> **Setter মানে হলো private ডাটা পরিবর্তন করার নিরাপদ রাস্তা।**

---

#### 2️⃣ Setter কেন দরকার?

Encapsulation-এ আমরা ডাটা `private` রাখি,
তাই বাইরের কোড সরাসরি ডাটা পরিবর্তন করতে পারে না।

কিন্তু বাস্তবে অনেক সময় ডাটা **পরিবর্তন করা দরকার হয়**।
সেই সময় আমরা ব্যবহার করি **Setter**।

Setter ব্যবহার করলে:

* ভুল value ঢোকা আটকানো যায়
* ডাটা safe থাকে
* class-এর উপর control থাকে

---

#### 3️⃣ Setter-এর Syntax (Dart)

```dart
set name(type value) {
  // validation
}
```

👉 Example:

```dart
set marks(int value) {
  _marks = value;
}
```

---

#### 4️⃣ Simple Example (Beginner Friendly)

```dart
class Student {
  int _marks = 0; // private variable

  // setter
  set marks(int value) {
    if (value < 0 || value > 100) {
      print("Invalid marks");
    } else {
      _marks = value;
    }
  }
}

void main() {
  var s = Student();
  s.marks = 85;   // setter call হচ্ছে
}
```

---

#### 5️⃣ এখানে কী হচ্ছে? (সহজ ব্যাখ্যা)

* `_marks` → private, সরাসরি change করা যাবে না
* `marks` → setter
* `s.marks = 85` লিখলে → setter call হয়
* value বসানোর আগে আমরা check করছি (0–100)

❌ এটা করা যাবে না:

```dart
s._marks = 200; // Error
```

---

#### 6️⃣ Setter-এর Real Use Case

#### 📌 Use Case 1: Validation (সবচেয়ে common)

```dart
class Person {
  int _age = 0;

  set age(int value) {
    if (value < 0) {
      print("Invalid age");
      return;
    }
    _age = value;
  }
}
```

👉 এখানে age কখনো negative হতে পারবে না।



#### 7️⃣ Setter কেন Encapsulation-এর অংশ?

কারণ:

* ডাটা private থাকে
* পরিবর্তন শুধু setter দিয়ে হয়
* setter ভিতরে validation ও rules থাকে

👉 তাই ডাটা safe থাকে এবং class reliable হয়।

---

#### এক লাইনে মনে রাখার কৌশল

> **Setter = private data safely change করার উপায়**

---

##### Full Example :
File name => employee_class.dart
````dart
class Employee {
  // this is private property
  String? _name;

  // private property access getter
  String? get newName => _name;

  // private property setter
  set updateValue(String name) {
    this._name = name;
  }
}
````
File name => employee_object.dart
````dart
// create class object
import 'employee_class.dart';

void main() {
  Employee employee = Employee();
  print(employee.newName);
  print('Set name =${employee.updateValue = 'Tuhin'}');

  //print(employee.updateValue);
}

````


### ✅ Dart OOP – Inheritance & super 

এই নোটে Dart OOP-এর সবচেয়ে গুরুত্বপূর্ণ ৩টা বিষয় সহজভাবে দেওয়া হলো।

---

#### 1️⃣ Inheritance কী? কেন ব্যবহার হয়?

#### 🔹 Inheritance কী?

👉 একটি class যখন আরেকটি class-এর property ও method ব্যবহার করে, তাকে **Inheritance** বলে।

Parent class → Child class
(`extends` keyword দিয়ে হয়)

---

#### 🔹 কেন ব্যবহার হয়?

✔ Code reuse
✔ Duplicate code কমে
✔ Real-world relationship বোঝানো যায়

---

#### 🔹 Simple Example

```dart
class Animal {
  void eat() {
    print("Animal is eating");
  }
}

class Dog extends Animal {
  void bark() {
    print("Dog is barking");
  }
}

void main() {
  Dog d = Dog();
  d.eat();   // parent method
  d.bark();  // child method
}
```

---

### 2️⃣ `super` কী? কেন ব্যবহার হয়?

#### `super` কী?

 `super` হলো **parent class-এর reference**
Child class থেকে parent-এর method, variable বা constructor access করতে ব্যবহার হয়।

---

#### কেন ব্যবহার হয়?

✔ Parent method call করতে
✔ Method overriding এর সময় parent logic রাখতে
✔ Parent constructor call করতে

---

##### Simple Example

```dart
class Parent {
  void show() {
    print("This is Parent");
  }
}

class Child extends Parent {
  void display() {
    super.show(); // parent method call
    print("This is Child");
  }
}

void main() {
  Child c = Child();
  c.display();
}
```

---

### 3️⃣ Method Overriding কী? কেন ব্যবহার হয়?

#### Method Overriding কী?

 Parent class-এর method কে child class-এ **নতুনভাবে লেখা** হলো Method Overriding।

---

#### 🔹 কেন ব্যবহার হয়?

✔ Child class-এর নিজস্ব behavior যোগ করতে
✔ Parent method modify করতে
✔ Runtime polymorphism এর জন্য

---

### 🔹 Simple Example

```dart
class Employee {
  void work() {
    print("Employee is working");
  }
}

class Developer extends Employee {
  @override
  void work() {
    print("Developer is coding");
  }
}

void main() {
  Developer d = Developer();
  d.work();
}
```

---

#### Extra Tip (Interview Ready)

* `extends` → inheritance
* `super` → parent access
* `@override` → method overriding

---

####  Conclusion

✔ Inheritance → code reuse

✔ super → parent access\

✔ Method Overriding → behavior change

এই তিনটা ঠিকভাবে বুঝলে
 **Dart OOP basic complete** 

---

