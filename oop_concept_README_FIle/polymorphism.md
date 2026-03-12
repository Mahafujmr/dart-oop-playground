

#### 📘 Dart OOP – Polymorphism

### 1️⃣ Polymorphism কী?

**Polymorphism** শব্দটি এসেছে দুইটি গ্রিক শব্দ থেকে:

* **Poly** → অনেক
* **Morph** → রূপ

অর্থাৎ,

> **Polymorphism মানে হলো একই method বা interface বিভিন্ন object এ বিভিন্নভাবে কাজ করা।**

সহজভাবে বললে:

একই method name → কিন্তু different behavior।

---

#### 2️⃣ Polymorphism কেন ব্যবহার করা হয়?

Software design এ polymorphism ব্যবহার করা হয়:

* Code flexible করার জন্য
* Different object কে একই interface দিয়ে handle করার জন্য
* Large system কে scalable করার জন্য

Polymorphism ব্যবহার করলে code **clean, maintainable এবং extensible** হয়।

---

#### 3️⃣ Polymorphism ব্যবহার করার Benefit

| Benefit          | Explanation                                         |
| ---------------- | --------------------------------------------------- |
| Code Reusability | একই method structure reuse করা যায়                  |
| Flexibility      | Different object একই interface দিয়ে ব্যবহার করা যায় |
| Maintainability  | Code সহজে modify করা যায়                            |
| Scalability      | নতুন class add করা সহজ হয়                           |
| Loose Coupling   | System components একে অপরের উপর কম depend করে       |

---

#### 4️⃣ Polymorphism এর Types

OOP এ সাধারণত দুই ধরনের polymorphism দেখা যায়:

| Type                      | Description        |
| ------------------------- | ------------------ |
| Compile Time Polymorphism | Method Overloading |
| Runtime Polymorphism      | Method Overriding  |

⚠️ Dart এ traditional **method overloading নেই**, তাই runtime polymorphism বেশি ব্যবহার হয়।

---

#### 5️⃣ Syntax (Runtime Polymorphism)

Polymorphism সাধারণত **Inheritance + Method Overriding** ব্যবহার করে করা হয়।

```dart
class Animal {
  void sound() {
    print("Animal makes a sound");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cat meows");
  }
}

void main() {
  Animal a;

  a = Dog();
  a.sound();

  a = Cat();
  a.sound();
}
```

### Output

```
Dog barks
Cat meows
```

#### Explanation

* `Animal` → Parent class
* `Dog` এবং `Cat` → Child class
* `sound()` → overridden method
* runtime এ object অনুযায়ী method execute হয়

---

#### 6️⃣ Polymorphism কিভাবে কাজ করে?

Execution Flow:

1. Parent class reference তৈরি হয়
2. Child class object assign করা হয়
3. Method call করলে runtime এ decide হয় কোন method run হবে

এটাকে বলা হয়:

**Dynamic Method Dispatch**

---

#### 7️⃣ Real Project Use Case

| Use Case            | Example                       |
| ------------------- | ----------------------------- |
| Payment System      | Bkash, Card, Nagad payment    |
| Notification System | Email, SMS, Push notification |
| Authentication      | Google login, Facebook login  |
| File Storage        | Local storage, Cloud storage  |
| API Service         | Different API implementation  |

---

#### Example: Payment System

```dart
abstract class Payment {
  void pay(double amount);
}

class BkashPayment extends Payment {
  @override
  void pay(double amount) {
    print("Paid $amount using Bkash");
  }
}

class CardPayment extends Payment {
  @override
  void pay(double amount) {
    print("Paid $amount using Card");
  }
}
```

Usage:

```dart
void main() {
  Payment payment;

  payment = BkashPayment();
  payment.pay(500);

  payment = CardPayment();
  payment.pay(800);
}
```

এখানে একই `pay()` method বিভিন্নভাবে কাজ করছে।

---

#### 8️⃣ Polymorphism vs Inheritance

| Feature  | Polymorphism       | Inheritance               |
| -------- | ------------------ | ------------------------- |
| Purpose  | Different behavior | Code reuse                |
| Based On | Method overriding  | Parent-child relationship |
| Usage    | Dynamic behavior   | Structure reuse           |

---

#### 9️⃣ Important Points

✔ Polymorphism মানে **same method, different behavior**
✔ সাধারণত **Inheritance + Method Overriding** দিয়ে implement করা হয়
✔ Runtime এ method decide হয়
✔ Parent class reference ব্যবহার করা হয়
✔ Large scalable system design এ গুরুত্বপূর্ণ
✔ Clean architecture এবং design pattern এ বেশি ব্যবহার হয়

---

#### 🔟 Interview Ready Definition

> Polymorphism is the ability of a method or object to take multiple forms, allowing the same interface to be used for different implementations.

---

#### 📌 Short Summary

Polymorphism OOP এর একটি গুরুত্বপূর্ণ concept যেখানে একই method বিভিন্ন object এর জন্য বিভিন্নভাবে কাজ করে। এটি সাধারণত inheritance এবং method overriding এর মাধ্যমে implement করা হয় এবং scalable software design এর জন্য খুব গুরুত্বপূর্ণ।

---

