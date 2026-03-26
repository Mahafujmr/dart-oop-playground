

#### 📘 Dart OOP – Mixin

---

#### 1️⃣ Mixin কী?

**Mixin** হলো এমন একটি feature যা দিয়ে একটি class-এ
**multiple source থেকে behavior add করা যায় without inheritance**।

> 🔎 Mixin = Reusable behavior (code reuse without extends)

---

#### 2️⃣ কেন Mixin ব্যবহার করা হয়?

Dart-এ **multiple inheritance support করে না** ❌
কিন্তু অনেক সময় একটি class-এ একাধিক behavior দরকার হয়।

👉 সেই ক্ষেত্রে mixin ব্যবহার করা হয়।

---

#### Problem Example

* Bird → fly করতে পারে
* Fish → swim করতে পারে
* Duck → fly + swim দুটোই পারে

👉 এখানে inheritance দিয়ে solve করা কঠিন
👉 mixin দিয়ে সহজে solve করা যায়

---

#### 3️⃣ Basic Syntax (`mixin` + `with`)

```dart
mixin Flyable {
  void fly() {
    print("Flying...");
  }
}

mixin Swimmable {
  void swim() {
    print("Swimming...");
  }
}

class Duck with Flyable, Swimmable {}
```

---

####  Concept

* `mixin` → behavior define করে
* `with` → mixin apply করে
* `Duck` → multiple behavior পায়

---

#### 4️⃣ `with` Keyword

👉 `with` keyword ব্যবহার করা হয় mixin apply করার জন্য।

```dart
class ClassName with Mixin1, Mixin2 {}
```

### ✔ Key Points

* Multiple mixin use করা যায়
* Left → Right order এ apply হয়
* Code reuse সহজ হয়

---

#### 5️⃣ `on` Keyword (Restriction)

👉 `on` keyword mixin কে restrict করে।

মানে mixin শুধু নির্দিষ্ট class type-এর সাথে কাজ করবে।

---

#### Example

```dart
class Animal {
  void eat() {
    print("Eating...");
  }
}

mixin Walkable on Animal {
  void walk() {
    print("Walking...");
  }
}

class Dog extends Animal with Walkable {}
```

---

#### Concept

* `Walkable` শুধু `Animal` type class-এ ব্যবহার করা যাবে
* Type safety নিশ্চিত করে

---

#### 6️⃣ Mixin কিভাবে কাজ করে?

Execution Flow:

1. Class তৈরি হয়
2. `with` দিয়ে mixin add হয়
3. Class mixin-এর method পায়
4. Object তৈরি হলে mixin method ব্যবহার করা যায়

---

#### 7️⃣ Real Project Use Case

| Use Case            | Description                        |
| ------------------- | ---------------------------------- |
| Logging System      | Common logging functionality reuse |
| Validation          | Form validation logic share        |
| Animation           | Flutter animation behavior reuse   |
| API Helper          | Common API methods share           |
| Permission Handling | Access control logic reuse         |

---

#### Example: Logging System

```dart
mixin Logger {
  void log(String message) {
    print("LOG: $message");
  }
}

class UserService with Logger {
  void createUser() {
    log("User created");
  }
}
```

---

#### 8️⃣ Mixin vs Inheritance

| Feature      | Mixin          | Inheritance          |
| ------------ | -------------- | -------------------- |
| Purpose      | Behavior reuse | Structure + behavior |
| Multiple use | ✅ Yes          | ❌ No                 |
| Keyword      | with           | extends              |
| Relationship | Not "is-a"     | "is-a"               |

---

#### 9️⃣ Important Rules

✔ `mixin` keyword ব্যবহার করতে হয়

✔ `with` দিয়ে mixin apply করতে হয়

✔ Multiple mixin use করা যায়

✔ `on` দিয়ে restriction দেওয়া যায়

✔ Mixin থেকে object তৈরি করা যায় না

✔ Mixin-এ constructor থাকে না

---

#### 🔟 Short Summary

```text
Mixin = Reusable behavior
with = Apply mixin
on = Restrict mixin
```

---

#### Final Understanding

Mixin ব্যবহার করা হয় যখন:

* Multiple behavior দরকার
* Code reuse করতে চাই
* Inheritance avoid করতে চাই
* Clean, modular design maintain করতে চাই

---


