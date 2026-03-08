

### Dart OOP – Interface

#### What is an Interface?

**Interface** হলো একটি ব্লুপ্রিন্ট যা বলে দেয় একটি class এ কোন কোন **method এবং property থাকতে হবে**, কিন্তু কিভাবে কাজ করবে সেটা বলে না।

অন্যান্য অনেক language (Java, C#) এ interface আলাদা keyword দিয়ে তৈরি করা হয়। কিন্তু **Dart** এ **প্রতিটি class নিজেই একটি interface হিসেবে কাজ করতে পারে।**

অর্থাৎ, একটি class এর method এবং property অন্য class implement করতে পারে।

---

#### Why Interface is Used?

Interface ব্যবহারের প্রধান উদ্দেশ্য:

* **Code Structure Maintain করা**
* **Multiple Inheritance Problem Solve করা**
* **Loose Coupling তৈরি করা**
* **Polymorphism সহজ করা**

---

### Syntax of Interface in Dart

Dart এ interface তৈরি করতে **`implements`** keyword ব্যবহার করা হয়।

```dart
class Animal {
  void sound() {
    print("Animal makes a sound");
  }
}

class Dog implements Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}
```

### Explanation

* `Animal` class এখানে **interface হিসেবে ব্যবহার হচ্ছে**

* `Dog` class `implements Animal`

* তাই `Dog` class কে **Animal এর সব method implement করতে হবে**

---

#### Important Rule

যদি কোনো class `implements` ব্যবহার করে, তাহলে সেই class কে:

✔ Interface এর **সব method override করতে হবে**

```dart
class Animal {
  void sound() {}
  void eat() {}
}

class Cat implements Animal {
  @override
  void sound() {
    print("Cat meows");
  }

  @override
  void eat() {
    print("Cat eats fish");
  }
}
```

---

#### Difference Between `extends` and `implements`

| Feature           | extends     | implements |
| ----------------- | ----------- | ---------- |
| Purpose           | Inheritance | Interface  |
| Method Override   | Optional    | Mandatory  |
| Parent Method Use | Yes         | No         |
| Code Reuse        | Yes         | No         |

Example:

```dart
class Animal {
  void sound() {
    print("Animal sound");
  }
}

class Dog extends Animal {}

class Cat implements Animal {
  @override
  void sound() {
    print("Cat sound");
  }
}
```

Explanation:

* `Dog` → Parent method ব্যবহার করতে পারে
* `Cat` → নিজে method implement করতে হবে

---

#### Multiple Interface Implementation

Dart এ একাধিক interface implement করা যায়।

```dart
class Flyable {
  void fly() {}
}

class Swimmable {
  void swim() {}
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() {
    print("Duck can fly");
  }

  @override
  void swim() {
    print("Duck can swim");
  }
}
```

---

#### Real World Example

```dart
class Payment {
  void pay(double amount) {}
}

class Bkash implements Payment {
  @override
  void pay(double amount) {
    print("Paid $amount using Bkash");
  }
}

class Nagad implements Payment {
  @override
  void pay(double amount) {
    print("Paid $amount using Nagad");
  }
}
```

এখানে:

* `Payment` → Interface
* `Bkash`, `Nagad` → Different implementations

---

### Interface vs Abstract Class

| Feature     | Interface  | Abstract Class |
| ----------- | ---------- | -------------- |
| Keyword     | implements | abstract       |
| Method Body | থাকে না    | থাকতে পারে     |
| Override    | Mandatory  | Optional       |

---

### Important Points (For Interview / Notes)

✔ **Dart এ আলাদা interface keyword নেই**

✔ **Every class can act as an interface**

✔ Interface implement করতে **`implements` keyword ব্যবহার করা হয়**

✔ Interface ব্যবহার করলে **সব method override করা বাধ্যতামূলক**

✔ **Multiple interface implement করা যায়**

✔ `extends` → Inheritance

✔ `implements` → Interface behavior

---

#### Short Summary

Interface হলো এমন একটি structure যা বলে দেয় একটি class এ কোন method থাকতে হবে। Dart এ প্রতিটি class interface হিসেবে ব্যবহার করা যায় এবং `implements` keyword দিয়ে তা implement করা হয়।

---

