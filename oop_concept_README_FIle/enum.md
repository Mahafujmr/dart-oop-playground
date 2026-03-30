

### 📘 Dart OOP – Enum

---

#### 🔹 1️⃣ Overview

**Enum (Enumeration)** হলো একটি custom data type যা দিয়ে
**fixed, predefined এবং type-safe values define করা হয়।**

> 💡 Enum ব্যবহার করা হয় যখন একটি variable শুধুমাত্র নির্দিষ্ট কিছু constant value নিতে পারে।

---

#### 🔹 2️⃣ Why Use Enum?

Enum ব্যবহারের প্রধান উদ্দেশ্য:

* ✔ **Type Safety** নিশ্চিত করা
* ✔ **Readable Code** লেখা
* ✔ **Magic Values (string/int)** avoid করা
* ✔ **Structured & Maintainable Code** তৈরি করা

---

#### 🔹 3️⃣ Basic Syntax

```dart
enum Status {
  loading,
  success,
  error
}
```

---

#### 🔹 4️⃣ Usage Example

```dart
void main() {
  Status currentStatus = Status.loading;

  if (currentStatus == Status.loading) {
    print("Loading...");
  }
}
```

---

#### 🔹 5️⃣ Switch Case (Best Practice)

```dart
void checkStatus(Status status) {
  switch (status) {
    case Status.loading:
      print("Loading...");
      break;

    case Status.success:
      print("Success");
      break;

    case Status.error:
      print("Error");
      break;
  }
}
```

> 💡 Enum + switch = Clean & maintainable logic

---

#### 🔹 6️⃣ Built-in Properties

Dart enum-এর কিছু গুরুত্বপূর্ণ built-in property:

---

##### ✔ `values`

```dart
Status.values
```

👉 সব enum values list আকারে দেয়

---

### ✔ `index`

```dart
Status.success.index // 1
```

👉 position return করে (0-based)

---

### ✔ `name`

```dart
Status.error.name // "error"
```

👉 enum value-এর নাম string হিসেবে দেয়

---

#### 🔹 7️⃣ Enhanced Enum (Advanced)

Dart enum-এ property, constructor এবং method add করা যায়।

---

#### Example

```dart
enum PaymentStatus {
  pending("Pending"),
  completed("Completed"),
  failed("Failed");

  final String label;

  const PaymentStatus(this.label);
}
```

---

#### Usage

```dart
void main() {
  print(PaymentStatus.pending.label); // Pending
}
```

---

#### 🔹 8️⃣ Enum with Method

```dart
enum Role {
  admin,
  user;

  void showRole() {
    print("Role: $name");
  }
}
```

---

#### 🔹 9️⃣ Real-World Use Cases

| Domain         | Example                     |
| -------------- | --------------------------- |
| API State      | loading, success, error     |
| User Role      | admin, user, guest          |
| Order Status   | pending, shipped, delivered |
| Theme Mode     | light, dark                 |
| Payment Status | success, failed             |

---

#### Example: API State Management

```dart
enum ApiState {
  loading,
  success,
  error
}

class ApiService {
  ApiState state = ApiState.loading;

  void fetchData() {
    state = ApiState.success;
  }
}
```

---

#### 🔹 🔟 Enum vs Primitive Values

| Feature         | Enum | String/Int |
| --------------- | ---- | ---------- |
| Type Safety     | ✅    | ❌          |
| Readability     | High | Low        |
| Maintainability | High | Low        |
| Error Risk      | Low  | High       |

---

#### 🔹 1️⃣1️⃣ Important Guidelines

✔ Enum সবসময় fixed values represent করে

✔ Runtime এ নতুন value add করা যায় না

✔ Enum ব্যবহার করলে invalid value assign করা যায় না

✔ Switch-case ব্যবহার করলে সব case cover করা ভালো practice

✔ Enhanced enum দিয়ে structured data model করা যায়

---

#### 🔹 1️⃣2️⃣ Common Mistakes

❌ Magic string ব্যবহার করা (`"success"`, `"error"`)

❌ Enum না ব্যবহার করে int দিয়ে status handle করা

❌ Switch-case incomplete রাখা

❌ Enum কে unnecessarily complex করা

---

#### 🔹 🔟 Summary

```text
Enum = Fixed & Type-safe Values
Readable Code = Easy Maintenance
Best Use = Status, Role, State Management
```

---

####  Final Thought

Enum হলো ছোট কিন্তু powerful concept যা:

* Code কে clean করে
* Bug কমায়
* System কে predictable করে

👉 Proper use করলে production-level code quality improve হয়।

---

✅ এই README দিয়ে তুমি:

* Professional documentation তৈরি করতে পারবে
* Clean code লিখতে পারবে
* Real project-এ confidently Enum ব্যবহার করতে পারবে


