#### Dart Class - গুরুত্বপূর্ণ Concepts

#### 📌 ১. Class কী?

**সহজ ভাষায়:**  
Class হলো একটা **নকশা বা ছাঁচ** (Blueprint)। যেমন: বাড়ি তৈরির নকশা।

```dart
class Student {
  String name;
  int age;
  
  Student(this.name, this.age);
}
```

**মনে রাখুন:**
- Class = নকশা/টেমপ্লেট
- এটা শুধু design, actual জিনিস না

---

#### 📌 ২. Object / Instance কী?

**সহজ ভাষায়:**  
Object হলো class এর **বাস্তব রূপ** (Actual copy)। নকশা দিয়ে তৈরি আসল বাড়ি।

```dart
// Class থেকে Object তৈরি
Student student1 = Student('রহিম', 20);  // ১ম object
Student student2 = Student('করিম', 22);  // ২য় object
```

**Instance মানে:**
- একটা Class এর একটা copy
- Object = Instance (একই জিনিস)

**Example:**
```
Class: Student (নকশা)
  ↓
Objects/Instances: student1, student2, student3 (আসল ছাত্র)
```

---

#### 📌 ৩. Properties কী?

**সহজ ভাষায়:**  
Properties হলো class এর **ভেরিয়েবল** বা **ডাটা**। Object এর তথ্য রাখে।

```dart
class Student {
  String name;     // ← Property
  int age;         // ← Property
  String grade;    // ← Property
}
```

**বৈশিষ্ট্য:**
- Class এর ভিতরে declare করা variables
- প্রতিটি object এর আলাদা আলাদা values থাকে

**Example:**
```dart
void main() {
  Student s1 = Student('রহিম', 20);
  Student s2 = Student('করিম', 22);
  
  print(s1.name);  // রহিম (s1 এর property)
  print(s2.name);  // করিম (s2 এর property)
}
```

---

#### 📌 ৪. Attributes কী?

**সহজ ভাষায়:**  
Attributes = Properties (একই জিনিস, ভিন্ন নাম)

```dart
class Car {
  String brand;    // ← Attribute/Property
  String color;    // ← Attribute/Property
  int year;        // ← Attribute/Property
}
```

**মনে রাখুন:**
- Properties = Attributes = Class Variables
- সব একই জিনিস, শুধু নাম আলাদা

---

---

#### 📘 Dart OOP – Method (বাংলা নোট)

#### 📌 Method কী?

**Method** হলো class এর ভিতরের একটি function।
এটি নির্ধারণ করে একটি object কী কী কাজ করতে পারবে।

👉 সহজভাবে:

> Method = Object এর কাজ করার ক্ষমতা

---

#### 🔹 Method এর সাধারণ গঠন

```dart
returnType methodName(parameters) {
  // কাজের কোড
}
```

#### ব্যাখ্যা:

* `returnType` → method কী ধরনের data return করবে
* `methodName` → method এর নাম
* `parameters` → input (যদি থাকে)

---

#### 📌 Method এর ধরন

---

#### 1️⃣ Instance Method

Object দিয়ে call করতে হয়।

```dart
class Person {
  void greet() {
    print("Hello");
  }
}

void main() {
  Person p = Person();
  p.greet();
}
```

✔ Object ছাড়া call করা যাবে না

---

#### 2️⃣ Parameter সহ Method

Input নেয়।

```dart
class Calculator {
  void add(int a, int b) {
    print(a + b);
  }
}
```

✔ Method input নিয়ে কাজ করে

---

#### 3️⃣ Return Type সহ Method

Value return করে।

```dart
class MathUtils {
  int multiply(int a, int b) {
    return a * b;
  }
}
```

✔ `int` হলো return type
✔ `return` keyword ব্যবহার করা হয়

---

#### 4️⃣ Static Method

Object ছাড়া call করা যায়।

```dart
class Helper {
  static void sayHello() {
    print("Hello");
  }
}

void main() {
  Helper.sayHello();
}
```

✔ Class level method
✔ Object দরকার হয় না

---

#### 📌 কেন Method গুরুত্বপূর্ণ?

✔ Code organize করে
✔ Logic reusable করে
✔ Object এর behavior define করে
✔ Clean structure তৈরি করে

---

#### 📌 Best Practices

* Meaningful নাম ব্যবহার করো
* এক method = এক কাজ
* Method ছোট রাখো
* অপ্রয়োজনীয় বড় logic এড়িয়ে চলো

---

#### 📌 Quick Summary

| বিষয়            | ব্যাখ্যা                 |
| --------------- | ------------------------ |
| Method          | Class এর ভিতরের function |
| Instance Method | Object দিয়ে call হয়      |
| Static Method   | Class দিয়ে call হয়       |
| Return Type     | Method কী return করবে    |

---

#### 🚀 Conclusion

Method হলো OOP এর একটি গুরুত্বপূর্ণ অংশ।
Method ভালোভাবে না বুঝলে
Inheritance, Polymorphism, Flutter — সবকিছু কঠিন হয়ে যাবে।








#### 📌 ৫. সব একসাথে বুঝুন

### Real Life Example: মোবাইল ফোন

```dart
class MobilePhone {
  // Properties/Attributes - ফোনের তথ্য
  String brand;
  String model;
  int ram;
  double price;
  
  // Constructor - নতুন ফোন তৈরি করার সময়
  MobilePhone(this.brand, this.model, this.ram, this.price);
  
  // Method - ফোনের কাজ
  void call(String number) {
    print('$brand ফোন থেকে $number নাম্বারে কল করছি...');
  }
}

void main() {
  // Objects/Instances তৈরি - আসল ফোন
  MobilePhone phone1 = MobilePhone('Samsung', 'Galaxy S23', 8, 85000);
  MobilePhone phone2 = MobilePhone('iPhone', '15 Pro', 12, 135000);
  
  // Properties access করা
  print(phone1.brand);   // Samsung
  print(phone2.brand);   // iPhone
  print(phone1.price);   // 85000
  
  // Method call করা
  phone1.call('01712345678');
}
```

**Output:**
```
Samsung
iPhone
85000.0
Samsung ফোন থেকে 01712345678 নাম্বারে কল করছি...
```

---

#### 📌 ৬. পার্থক্য সারণি

| Term | বাংলা | মানে | উদাহরণ |
|------|------|------|--------|
| **Class** | ক্লাস/নকশা | একটা blueprint | `class Student` |
| **Object** | অবজেক্ট/বস্তু | Class এর copy | `Student('রহিম', 20)` |
| **Instance** | ইন্সট্যান্স | Object এর অন্য নাম | `student1`, `student2` |
| **Property** | প্রপার্টি/বৈশিষ্ট্য | Class এর variable | `String name;` |
| **Attribute** | এট্রিবিউট | Property এর অন্য নাম | `int age;` |

---

#### 📌 ৭. Visual Diagram

```
┌─────────────────────────────┐
│   Class: Student (নকশা)     │
├─────────────────────────────┤
│  Properties/Attributes:     │
│  - String name              │
│  - int age                  │
│  - String grade             │
└─────────────────────────────┘
           │
           │ তৈরি করা হয় (Instantiate)
           ↓
    ┌──────────────┐  ┌──────────────┐  ┌──────────────┐
    │ Object 1     │  │ Object 2     │  │ Object 3     │
    │ (Instance)   │  │ (Instance)   │  │ (Instance)   │
    ├──────────────┤  ├──────────────┤  ├──────────────┤
    │ name: রহিম   │  │ name: করিম   │  │ name: সালমা  │
    │ age: 20      │  │ age: 22      │  │ age: 19      │
    │ grade: A     │  │ grade: B     │  │ grade: A+    │
    └──────────────┘  └──────────────┘  └──────────────┘
```

---

#### 📌 ৮. আরেকটি সহজ উদাহরণ

```dart
// Class = Cookie Cutter (কুকি কাটার ছাঁচ)
class Cookie {
  String flavor;      // Property: স্বাদ
  String shape;       // Property: আকৃতি
  
  Cookie(this.flavor, this.shape);  // Constructor
  
  void describe() {
    print('এটি $shape আকারের $flavor কুকি');
  }
}

void main() {
  // Objects = Actual Cookies (আসল কুকি)
  Cookie cookie1 = Cookie('চকলেট', 'গোল');
  Cookie cookie2 = Cookie('ভ্যানিলা', 'তারা');
  Cookie cookie3 = Cookie('স্ট্রবেরি', 'হার্ট');
  
  // প্রতিটি cookie এর আলাদা properties
  cookie1.describe();  // এটি গোল আকারের চকলেট কুকি
  cookie2.describe();  // এটি তারা আকারের ভ্যানিলা কুকি
  cookie3.describe();  // এটি হার্ট আকারের স্ট্রবেরি কুকি
}
```

---

#### 📌 ৯. মনে রাখার সহজ উপায়

**1️⃣ Class:**
- "আমি একটা নকশা"
- কোনো আসল জিনিস না

**2️⃣ Object/Instance:**
- "আমি আসল জিনিস"
- Class থেকে তৈরি

**3️⃣ Properties/Attributes:**
- "আমি তথ্য রাখি"
- Object এর ভিতরে থাকে

---

#### 📌 ১০. Quick Practice

```dart
// এই class টা দেখুন
class Book {
  String title;       // Property 1
  String author;      // Property 2
  int pages;          // Property 3
  
  Book(this.title, this.author, this.pages);  // Constructor
  
  void info() {
    print('বই: $title, লেখক: $author, পৃষ্ঠা: $pages');
  }
}

void main() {
  // তিনটা আলাদা book object
  Book book1 = Book('পথের পাঁচালী', 'বিভূতিভূষণ', 320);
  Book book2 = Book('গীতাঞ্জলি', 'রবীন্দ্রনাথ', 250);
  Book book3 = Book('শেষের কবিতা', 'রবীন্দ্রনাথ', 180);
  
  book1.info();
  book2.info();
  book3.info();
}
```

**Output:**
```
বই: পথের পাঁচালী, লেখক: বিভূতিভূষণ, পৃষ্ঠা: 320
বই: গীতাঞ্জলি, লেখক: রবীন্দ্রনাথ, পৃষ্ঠা: 250
বই: শেষের কবিতা, লেখক: রবীন্দ্রনাথ, পৃষ্ঠা: 180
```

---

#### ✅ সারাংশ

- **Class** = নকশা/Blueprint
- **Object/Instance** = Class থেকে তৈরি actual copy
- **Properties/Attributes** = Class এর variables/data

এই তিনটা concept বুঝলেই Dart Class বুঝে গেছেন! 🎉


#### 📘 Dart OOP – Constructor (বাংলা নোট)

#### 📌 Constructor কী?

**Constructor** হলো একটি special method যা object তৈরি হওয়ার সময় স্বয়ংক্রিয়ভাবে call হয়।

👉 Class এর নামের মতোই Constructor এর নাম হয়।
👉 Object তৈরি হলে এটি initialization এর কাজ করে।

---

#### 🔹 Constructor এর সাধারণ গঠন

```dart
class ClassName {
  ClassName() {
    // initialization code
  }
}
```

---

#### 📌 Constructor এর ধরন

---

#### 1️⃣ Default Constructor

#### 🔹 কী?

যদি আমরা নিজে কোনো constructor না লিখি,
তাহলে Dart automatically একটি default constructor তৈরি করে।

---

#### 🔹 Example

```dart
class Person {
  Person() {
    print("Object created");
  }
}

void main() {
  Person p = Person();
}
```

#### বৈশিষ্ট্য

✔ কোনো parameter নেয় না
✔ Basic initialization এর জন্য

---

#### 2️⃣ Parameterized Constructor

#### 🔹 কী?

যে constructor parameter নেয়, তাকে Parameterized Constructor বলে।

👉 Object তৈরির সময় data পাঠানো যায়।

---

#### 🔹 Example

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void main() {
  Person p = Person("Tuhin", 22);
}
```

####  কী হচ্ছে?

* `this.name` → class এর variable initialize করছে
* Object তৈরি করার সময় data pass করা হচ্ছে

---

#### 🔹 Alternative (Manual Assignment)

```dart
class Person {
  String name;
  int age;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }
}
```

---

####  বৈশিষ্ট্য

✔ Object specific data নেয়
✔ Real project এ সবচেয়ে বেশি ব্যবহৃত

---

#### 3️⃣ Named Constructor

#### 🔹 কী?

একটি class এ একাধিক constructor তৈরি করার জন্য Named Constructor ব্যবহার করা হয়।

👉 Format:

```
ClassName.constructorName()
```

---

#### 🔹 Example

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  Person.guest() {
    name = "Guest";
    age = 0;
  }
}

void main() {
  Person p1 = Person("Tuhin", 22);
  Person p2 = Person.guest();
}
```

---

#### 🧠 কেন দরকার?

✔ Multiple initialization system

✔ Different object creation logic

✔ Clean & readable code

---

#### 📌 Quick Comparison

| Type          | Parameter নেয়? | ব্যবহার                   |
| ------------- | -------------- | ------------------------- |
| Default       | ❌              | Basic object creation     |
| Parameterized | ✅              | Data সহ object তৈরি       |
| Named         | Optional       | Multiple constructor তৈরি |

---

#### 📌 Best Practices

✔ Initialization clear রাখো

✔ Named constructor meaningful নাম দাও

✔ প্রয়োজন ছাড়া complex constructor লিখো না

✔ Large project এ multiple named constructor useful

---

#### 🚀 Conclusion

Constructor ব্যবহার করা হয় object initialize করার জন্য।

✔ Default → simple
✔ Parameterized → data সহ
✔ Named → multiple creation logic

Constructor ভালোভাবে না বুঝলে
OOP এবং Flutter model class বুঝতে সমস্যা হবে।

---


