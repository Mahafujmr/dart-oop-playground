

### Dart OOP – Encapsulation 

####  Encapsulation বলতে কী বোঝায়?

**Encapsulation** হলো Object-Oriented Programming (OOP)-এর একটি মূল স্তম্ভ,
যেখানে—

> **একটি class-এর ভিতরে data (variable) এবং behavior (method) একসাথে রাখা হয়
> এবং সেই data-তে বাইরের জগতের সরাসরি প্রবেশ বন্ধ করা হয়।**

অর্থাৎ,

* data লুকানো থাকে (data hiding)
* কিন্তু প্রয়োজন অনুযায়ী **নিয়ন্ত্রিতভাবে access দেওয়া হয়**

📌 **সহজ ভাষায়:**
👉 Encapsulation = **Data লুকানো + নিয়ম মেনে ব্যবহার করা**

---

#### 🎯 Dart-এ Encapsulation কীভাবে কাজ করে?

Dart-এ Encapsulation করার জন্য আমরা মূলত ৩টি জিনিস ব্যবহার করি—

1. 🔒 **Private Variable** (`_variableName`)
2. 🔑 **Getter** → data পড়ার জন্য
3. 🛠 **Setter** → data পরিবর্তনের জন্য

---

#### 🔒 Private Variable কী?

Dart-এ কোনো variable-এর নামের আগে `_` দিলে
সেটা **private** হয়ে যায়।

```dart
int _age;
```

📌 এর মানে:

* এই variable-টি **class-এর বাইরে থেকে access করা যাবে না**
* Direct change করা যাবে না

👉 এটা Encapsulation-এর প্রথম ধাপ

---

####  কিন্তু Data hide করলে লাভ কী?

চলো বাস্তব উদাহরণ দিয়ে বুঝি 

####  Bank Account Example (Real Life)

ধরো, তোমার একটি ব্যাংক একাউন্ট আছে।

❌ তুমি কি চাইবে—

* যে কেউ balance change করে দিক?
* negative balance বসিয়ে দিক?

➡️ না।

তাই আমরা চাই—
✔ balance direct access না পাক
✔ নির্দিষ্ট নিয়ম মেনে access পাক

👉 এই চিন্তাটাই Encapsulation

---

####  Getter কী? (Deep Explanation)

**Getter** হলো একটি বিশেষ method
যার কাজ হলো—

> **Getter হলো একটি special method যেটা ব্যবহার করে আমরা private variable-এর value পড়তে (read) পারি কিন্তু পরিবর্তন (change) করতে পারি না।**

####  কেন Getter দরকার?

কারণ:

* private variable direct পড়া যায় না
* কিন্তু অনেক সময় value জানা দরকার

👉 তখন Getter ব্যবহার করি

---

#### Getter Example

```dart
class Person {
  int _age = 20;

  int get age {
    return _age;
  }
}
```

 এখানে:

* `_age` → private
* `age` → public getter

➡️ বাইরে থেকে কেউ শুধু **পড়তে পারবে**, পরিবর্তন করতে পারবে না

---

####  ✅Setter কী? (Deep Explanation)

**Setter** হলো এমন একটি method
যার কাজ হলো—

> **Setter হলো একটি special method যার মাধ্যমে আমরা private variable-এর value পরিবর্তন (set) করতে পারি কিন্তু সেই পরিবর্তনটা হয় নিয়ন্ত্রণ (control) ও validation সহ।**

####  Setter কেন দরকার?

কারণ:

* Direct update করলে ভুল value আসতে পারে
* Validation দরকার

👉 Setter আমাদের **control দেয়**

---

#### Setter Example

```dart
class Person {
  int _age = 0;

  set age(int value) {
    if (value > 0) {
      _age = value;
    }
  }
}
```

 এখানে:

* negative age বসানো যাবে না
* rule ভেঙে update হবে না

---

####  Complete Encapsulation Example (Best Practice)

```dart
class BankAccount {
  double _balance = 0;

  double get balance {
    return _balance;
  }

  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }
}

void main() {
  BankAccount account = BankAccount();

  account.deposit = 3000;   // setter
  print(account.balance);   // getter
}
```

---

####  উদাহরণে

✔ `_balance` পুরোপুরি protected

✔ ভুল data ঢুকতে পারবে না

✔ safe & professional design

---

#### Encapsulation ব্যবহার করার আসল কাজ কী?

##### 1️⃣ Data Security

Data safe থাকে

#### 2️⃣ Controlled Access

কে কী করবে, সেটা আমরা ঠিক করি

#### 3️⃣ Clean Code

Project বড় হলেও manage করা সহজ

#### 4️⃣ Debugging Easy

Bug ধরতে সময় কম লাগে

#### 5️⃣ Real Project Ready



---

####  Professional Tips

✔ সব variable private রাখো

✔ Getter শুধু read-only কাজের জন্য

✔ Setter-এ অবশ্যই validation দাও

✔ Business logic setter-এর ভিতরে রাখো

---

