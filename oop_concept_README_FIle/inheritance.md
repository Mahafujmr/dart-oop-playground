

### Dart OOP – Inheritance

**একটি প্রফেশনাল ও সহজ গাইড (Bangla)**

---

####  সংক্ষিপ্ত পরিচিতি (Overview)

**Inheritance** হলো Object-Oriented Programming (OOP)-এর একটি গুরুত্বপূর্ণ ধারণা।
Dart এ Inheritance ব্যবহার করে একটি class অন্য একটি class-এর **property ও method পুনরায় ব্যবহার** করতে পারে।
এর মাধ্যমে আমরা **clean, scalable এবং maintainable** application তৈরি করতে পারি।

---

####  Inheritance কাকে বলে?

**Inheritance** হলো এমন একটি প্রক্রিয়া যেখানে
👉 একটি **Child class**,
👉 একটি **Parent class-এর property ও method ব্যবহার করতে পারে**।

 সহজ ভাষায়:

> **Child class = Parent class + অতিরিক্ত feature**

---

#### Inheritance কেন গুরুত্বপূর্ণ?

Inheritance ব্যবহার করা হয় কারণ:

* ✅ একই code বারবার লিখতে হয় না
* ✅ Code reuse করা যায়
* ✅ Project maintain করা সহজ হয়
* ✅ Real project scalable হয়

 Industry rule:

> *একবার common logic লিখো, বারবার ব্যবহার করো।*

---

#### Parent Class ও Child Class

### 🧱 Parent Class

* Common property ও method থাকে
* যেগুলো অনেক class ব্যবহার করবে

####  Child Class

* Parent class-এর public জিনিস পায়
* নিজের নতুন feature যোগ করতে পারে

#### Relationship

Inheritance সবসময় একটি **is-a relationship** follow করে।

উদাহরণ:

* Admin **is a** User
* Dog **is an** Animal

---

#### Dart এ Inheritance এর Syntax

```dart
class Child extends Parent {
}
```

#### গুরুত্বপূর্ণ বিষয়:

* `extends` keyword ব্যবহার করা হয়
* Dart এ একসাথে **শুধু একটি Parent class** নেওয়া যায়

---

#### Dart এ কয় ধরনের Inheritance ব্যবহার করা যায়?

Dart এ মোট **৩ ধরনের Inheritance ব্যবহার করা যায়**:

1️⃣ Single Inheritance
2️⃣ Multilevel Inheritance
3️⃣ Hierarchical Inheritance

 Multiple ও Hybrid Inheritance → Dart support করে না

---

#### 1️⃣ Single Inheritance

#### কাকে বলে?

একটি Child class → একটি Parent class থেকে inherit করে।

##### উদাহরণ

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
```

#### ব্যবহার ক্ষেত্র

* User → Admin
* BaseWidget → LoginPage

---

#### 2️⃣ Multilevel Inheritance

#### কাকে বলে?

একটি Child class আবার আরেকটি Child class-এর Parent হয়।

 Structure:

> Parent → Child → Grandchild

#### উদাহরণ

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

class Puppy extends Dog {
  void weep() {
    print("Puppy is weeping");
  }
}
```

#### ব্যবহার ক্ষেত্র

* User → Staff → Manager
* Vehicle → Car → ElectricCar

---

#### 3️⃣ Hierarchical Inheritance

#### কাকে বলে?

একটি Parent class থেকে একাধিক Child class inherit করে।

#### উদাহরণ

```dart
class User {
  void login() {
    print("User logged in");
  }
}

class Admin extends User {
  void deleteUser() {
    print("Admin deleted a user");
  }
}

class Customer extends User {
  void buyProduct() {
    print("Customer bought a product");
  }
}
```

#### ব্যবহার ক্ষেত্র

* User system
* Payment system
* Notification system

---

#### Inheritance ভিতরে ভিতরে কিভাবে কাজ করে?

* Object তৈরি হলে:
  1️⃣ আগে Parent class load হয়
  2️⃣ তারপর Child class load হয়

* Method বা property call হলে:

    * আগে Child class এ খোঁজা হয়
    * না পেলে Parent class এ খোঁজা হয়

---

#### Constructor এবং Inheritance

যদি Parent class-এ constructor থাকে,
তাহলে Child class থেকে `super()` ব্যবহার করে সেটি call করতে হয়।

```dart
Child() : super();
```

 সবসময় Parent constructor আগে execute হয়।

---

#### কখন Inheritance ব্যবহার করা উচিত নয়?

 যদি is-a relationship না থাকে .
 যদি class গুলোর মধ্যে সম্পর্ক না থাকে


#### গুরুত্বপূর্ণ Key Points (মনে রাখার জন্য)

* Inheritance code reuse করে
* Dart এ শুধু single inheritance
* `extends` keyword ব্যবহার হয়
* is-a relationship follow করতে হয়
* Parent আগে, Child পরে load হয়

---

#### Interview এক লাইনের উত্তর

> **Inheritance হলো এমন একটি OOP feature যেখানে Child class, Parent class-এর property ও method ব্যবহার করে scalable ও maintainable system তৈরি করে।**

---

#### উপসংহার (Conclusion)

Inheritance Dart OOP-এর একটি শক্তিশালী ধারণা যা real-world application-এ common logic পুনরায় ব্যবহার করতে সাহায্য করে এবং code structure পরিষ্কার রাখে।

---


