# 📦 ADB Path Setup Script

## 🇸🇦 الوصف (Description in Arabic)

هذا السكريبت بلغة PowerShell يُستخدم لإضافة مسار أداة Android Debug Bridge (adb.exe) إلى متغير البيئة PATH في نظام ويندوز. الأداة مهمة للمطورين العاملين على تطبيقات Android، حيث تسمح بالتواصل مع الأجهزة لتثبيت التطبيقات، تصحيح الأخطاء، وغيرها من المهام.

### ✅ مميزات السكريبت:

* التحقق من تشغيل السكريبت كمسؤول (Administrator) تلقائيًا.
* يسأل المستخدم عن المسار الكامل لملف `adb.exe`.
* يتحقق من وجود الملف قبل المتابعة.
* يتفقد إذا كان المسار مضاف مسبقًا إلى PATH.
* يضيف المسار إلى PATH إن لم يكن موجودًا.
* يُعلِم المستخدم بإعادة تشغيل الجهاز أو الطرفية لتفعيل التغييرات.

### 🎯 فوائد للمستخدم:

* لا حاجة للتعديل اليدوي في إعدادات النظام.
* يحمي المستخدم من الأخطاء الشائعة عند إعداد adb.
* يوفر تجربة سهلة وسريعة للمطورين أو الطلاب.

---

## 🇬🇧 Description (English)

This PowerShell script helps automatically add the path of the Android Debug Bridge (`adb.exe`) to the system’s PATH environment variable on Windows. This is essential for developers working with Android devices for tasks such as installing apps, debugging, and device communication.

### ✅ Features:

* Automatically checks for Administrator privileges and relaunches with elevation if needed.
* Prompts the user to enter the full path to `adb.exe`.
* Validates the file path.
* Checks if the path is already in the PATH variable.
* Appends the path to the system PATH if it isn't already there.
* Notifies the user to restart their system or terminal for the changes to take effect.

### 🎯 Benefits to the User:

* No need for manual system variable editing.
* Protects against common configuration errors.
* Provides a fast and user-friendly way for developers and students to configure `adb` correctly.

---

## ⚠️ ملاحظات (Notes)

* هذا السكريبت يقوم بتعديل متغير النظام `PATH` الموجود في الريجيستري، لذا تأكد من تشغيله كمسؤول.
* ينصح بإعادة تشغيل الطرفية أو الجهاز بعد تشغيل السكريبت لتفعيل التغييرات.

---

## 🚀 طريقة الاستخدام (How to Use)

1. افتح PowerShell كـ Administrator.
2. شغل السكريبت.
3. عندما يُطلب منك، أدخل المسار الكامل لـ `adb.exe` (مثال: `C:\platform-tools\adb.exe`).
4. تابع التعليمات الظاهرة في الطرفية.

Enjoy smoother Android development setup! ✅
