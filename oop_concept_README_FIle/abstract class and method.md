

#### 📘 Dart OOP – Abstract Class & Abstract Method

---

#### 🔹 1️⃣ Abstract Class কী?

**Abstract class** হলো এমন একটি class:

* যেটা থেকে সরাসরি object তৈরি করা যায় না
* Child class-কে নির্দিষ্ট structure follow করতে বাধ্য করে
* Abstract method থাকতে পারে
* Normal method-ও থাকতে পারে

> 🔎 Abstract class মূলত contract define করে।

---

#### ✅ Syntax

```dart
abstract class ClassName {
  // Abstract method
  returnType methodName();

  // Normal method
  void normalMethod() {
    print("Common behavior");
  }
}
```

---

#### 🔹 2️⃣ Abstract Method কী?

**Abstract method** হলো এমন method:

* যার body নেই
* শুধু method signature থাকে
* Child class-কে অবশ্যই implement করতে হয়

---

#### ✅ Example

```dart
abstract class Animal {
  void makeSound(); // Abstract method
}
```

---

#### 🔹 3️⃣ Complete Example (Step by Step)

#### Step 1️⃣: Abstract Class তৈরি

```dart
abstract class Shape {
  double calculateArea();
}
```

* `Shape` থেকে object বানানো যাবে না
* `calculateArea()` implement করতেই হবে

---

#### Step 2️⃣: Child Class Implementation

```dart
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.1416 * radius * radius;
  }
}
```

```dart
class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width;
  }
}
```

---

#### Step 3️⃣: Usage

```dart
void main() {
  Shape c = Circle(5);
  print(c.calculateArea());

  Shape r = Rectangle(4, 6);
  print(r.calculateArea());
}
```

✔ Polymorphism কাজ করছে
✔ Common structure enforce হয়েছে

---

#### 🔹 4️⃣ Real Project Use Case

| Use Case            | কেন Abstract Class ব্যবহার হয়              |
| ------------------- | ------------------------------------------ |
| Payment System      | সব payment method কে একই rule follow করাতে |
| Repository Layer    | Data source contract define করতে           |
| Authentication      | Login structure enforce করতে               |
| Plugin Architecture | Multiple implementation support করতে       |
| Clean Architecture  | Layer dependency control করতে              |

---

#### Example: Payment System

```dart
abstract class Payment {
  void pay(double amount);
}

class BkashPayment extends Payment {
  @override
  void pay(double amount) {
    print("Paid $amount via Bkash");
  }
}

class CardPayment extends Payment {
  @override
  void pay(double amount) {
    print("Paid $amount via Card");
  }
}
```

---

#### 🔹 5️⃣ Key Rules (Must Remember)

✅ Abstract class থেকে object তৈরি করা যায় না
✅ abstract keyword ব্যবহার করতে হয়
✅ Abstract method-এর body থাকে না
✅ Child class-কে abstract method implement করতেই হবে
✅ Abstract class-এ normal method থাকতে পারে
✅ Compile-time error দেয় যদি implement না করা হয়

---

#### 🔹 6️⃣ Abstract Class vs Normal Class

| বিষয়                       | Normal Class | Abstract Class |
| -------------------------- | ------------ | -------------- |
| Object বানানো যায়          | ✅            | ❌              |
| Abstract method থাকতে পারে | ❌            | ✅              |
| Structure enforce করে      | ❌            | ✅              |

---

#### 🔹 7️⃣ Interview Ready Q&A

#### ❓ Abstract class কী?

> Abstract class হলো এমন class যা থেকে object তৈরি করা যায় না এবং যার abstract method child class-কে implement করতে হয়।

---

#### ❓ Abstract method কী?

> A method without a body that must be implemented by subclasses.

---

#### ❓ Abstract class কেন ব্যবহার করা হয়?

✔ Contract enforce করতে
✔ Polymorphism enable করতে
✔ Scalable architecture বানাতে

---

#### ❓ Abstract class-এ constructor থাকতে পারে?

✅ হ্যাঁ
❌ কিন্তু object তৈরি করা যায় না

---

#### 🔹 8️⃣ Final Concept Summary

```
Abstract Class = Structure / Contract
Abstract Method = Rule
Child Class = Implementation
```

---

#### 🚀 Professional Understanding

Abstract class ব্যবহার করা হয় যখন:

* Direct object তৈরি করতে চাই না
* Multiple implementation দরকার
* Large scalable system design করতে চাই
* Clean architecture follow করতে চাই

---

✨ এই নোট পড়ে তুমি:

✔ Abstract class confidently explain করতে পারবে
✔ Real project-এ কোথায় ব্যবহার হয় জানবে
✔ Interview ready থাকবে

---


---

### ✅ Abstract Class – গুরুত্বপূর্ণ পয়েন্ট

🔹 `abstract` keyword ব্যবহার করতে হয়

🔹 Abstract class থেকে সরাসরি object তৈরি করা যায় না

🔹 Abstract class-এ abstract method থাকতে পারে

🔹 Abstract class-এ normal (body সহ) method থাকতে পারে

🔹 Abstract class-এ constructor থাকতে পারে

🔹 Child class-কে abstract method implement করতেই হবে

🔹 Structure / contract enforce করার জন্য ব্যবহার হয়

🔹 Polymorphism enable করে

🔹 Clean Architecture ও scalable system এ বেশি ব্যবহার হয়

🔹 Compile-time safety দেয় (implement না করলে error)

---

#### ✅ Abstract Method – গুরুত্বপূর্ণ পয়েন্ট

🔹 Abstract method-এর body থাকে না

🔹 শুধু method signature থাকে

🔹 Abstract class-এর ভিতরেই লেখা যায়

🔹 Child class-কে বাধ্যতামূলকভাবে implement করতে হয়

🔹 Override না করলে compile-time error হয়

🔹 Contract enforcement এর জন্য ব্যবহার হয়

🔹 Runtime এ child class-এর implementation run হয় (dynamic dispatch)

---

#### ✅ কখন ব্যবহার করবো?

✔ যখন common structure enforce করতে চাই

✔ যখন multiple class একই rule follow করবে

✔ যখন direct object তৈরি করতে চাই না

✔ যখন scalable & clean architecture বানাতে চাই

---

#### ✅ এক লাইনে মনে রাখো

```
Abstract Class = Structure
Abstract Method = Rule
Child Class = Implementation
```

---


