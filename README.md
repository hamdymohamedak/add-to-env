# PowerShell Script to Add Folder to System PATH

## 📌 Overview
This PowerShell script allows users to **easily add a custom folder to the Windows system PATH environment variable**. It ensures that the script is run with administrative privileges, checks if the folder exists, and avoids adding duplicates to the PATH.

---

## ✅ Features

- 🔐 **Admin Privilege Check**: Automatically re-launches with elevated privileges if needed.
- 📂 **Folder Validation**: Prompts for folder path and verifies its existence.
- 🔁 **Duplicate Check**: Checks if the folder is already in PATH.
- ➕ **Safe Append**: Adds folder to system PATH only if it's not already present.
- 🔄 **Environment Update**: Notifies the system about the PATH change without requiring a restart.
- 🖥️ **User-Friendly Output**: Colored feedback for each operation.

---

## 🚀 How to Use

1. **Right-click** on the script file and select **"Run with PowerShell"** _or_ run from terminal using:

```powershell
powershell -ExecutionPolicy Bypass -File .\Path.ps1
```

2. When prompted, enter the full path to the folder you want to add, e.g.:

```
C:\scrcpy-win64-v3.3.1
```

---

## 💡 Example Use Case

You downloaded a CLI tool like `scrcpy` and want to be able to run it from any command prompt. Instead of manually editing environment variables, just:

```powershell
powershell -ExecutionPolicy Bypass -File .\Path.ps1
```

Then input:

```
C:\scrcpy-win64-v3.3.1\scrcpy-win64-v3.3.1
```

Now you can run `scrcpy` from any terminal session.

---

## ⚠️ Notes

- Always **open a new terminal session** after running this script to load the new PATH.
- This script **modifies system-level environment variables**. Use with care.

---

## 🛠 Requirements

- Windows OS
- PowerShell (v5 or later)
- Administrator privileges

---

## 📁 File

- `Path.ps1` – The PowerShell script that handles all operations.

---

## 🧑‍💻 Author

Created by **Hamdy Mohamed** for simplifying Windows environment setup tasks.


# AR

# سكربت PowerShell لإضافة مجلد إلى PATH في نظام ويندوز

## 📌 نظرة عامة
هذا السكربت يساعدك على **إضافة مجلد مخصص إلى متغير البيئة PATH الخاص بالنظام في ويندوز بسهولة**. يتحقق من تشغيله كمسؤول، ويتأكد من وجود المجلد، ويمنع التكرار في PATH.

---

## ✅ المميزات

- 🔐 **التحقق من صلاحيات المسؤول**: يعيد تشغيل نفسه تلقائيًا بصلاحيات المسؤول إذا لم يكن كذلك.
- 📂 **التحقق من المجلد**: يطلب منك إدخال المسار ويتأكد من وجوده.
- 🔁 **التحقق من التكرار**: يتأكد إذا كان المجلد مضاف مسبقًا في PATH.
- ➕ **إضافة آمنة**: يضيف المجلد فقط إذا لم يكن موجودًا بالفعل.
- 🔄 **تحديث البيئة**: يخبر النظام بتحديث متغير البيئة بدون الحاجة لإعادة التشغيل.
- 🖥️ **رسائل واضحة للمستخدم**: يوضح نتيجة كل خطوة بلون مختلف.

---

## 🚀 طريقة الاستخدام

1. **اضغط بزر الماوس الأيمن** على ملف السكربت واختر **"Run with PowerShell"** أو قم بتشغيله عبر الطرفية باستخدام:

```powershell
powershell -ExecutionPolicy Bypass -File .\Path.ps1
```

2. عند الطلب، أدخل مسار المجلد الذي تريد إضافته، مثال:

```
C:\scrcpy-win64-v3.3.1
```

---

## 💡 مثال استخدام

قمت بتحميل أداة مثل `scrcpy` وتريد تشغيلها من أي مكان في الطرفية، بدل ما تعدل PATH يدويًا، فقط شغّل:

```powershell
powershell -ExecutionPolicy Bypass -File .\Path.ps1
```

ثم أدخل المسار:

```
C:\scrcpy-win64-v3.3.1\scrcpy-win64-v3.3.1
```

الآن يمكنك كتابة `scrcpy` في أي نافذة أوامر وتشغيله.

---

## ⚠️ ملاحظات

- تأكد من **فتح نافذة جديدة للطرفية** بعد تشغيل السكربت لتحميل التحديثات في PATH.
- هذا السكربت **يعدل متغيرات بيئة النظام**، لذلك استخدمه بحذر.

---

## 🛠 المتطلبات

- نظام تشغيل Windows
- PowerShell (الإصدار الخامس أو أحدث)
- صلاحيات مسؤول

---

## 📁 الملفات

- `Path.ps1` – السكربت الذي ينفذ جميع العمليات.

---

## 🧑‍💻 المؤلف

تم الإنشاء بواسطة **Hamdy Mohamed** لتسهيل إعداد بيئة النظام على ويندوز.
