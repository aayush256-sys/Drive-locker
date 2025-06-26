# 🔐 D: Drive Content Locker (Windows Batch Script)

A simple batch script to **lock and unlock all folders and files in `D:\`** using the Windows `attrib` command with basic password protection.

⚠️ This script is for **basic privacy only**, not for true data security.

---

## 📁 Features

- Lock (hide) all top-level files and folders in `D:\`
- Unlock them after entering the correct password
- Skips system-protected folders like `$RECYCLE.BIN`
- Easy menu-driven interface

---

## ⚙️ How It Works

- `+h` — Hides the file/folder  
- `+s` — Marks it as a system item (extra hidden)  
- `/s` — Applies changes to all subfolders/files  
- `/d` — Applies to directories (folders)

---

## 🔧 Setup

1. **Download or copy** the `DriveLocker.bat` file to your system.

2. **Edit the script** in Notepad or any text editor. Find this line:
   ````  bat
   
     set password=YourPasswordHere
   
   ````
   Replace `YourPasswordHere` with your desired password.

4. **Double-click** `DriveLocker.bat` to run it.

5. **Choose** an option from the menu:
   ```` bat

   - 1. Lock all content in D:\
   - 2. Unlock content in D:\
   - 3. Exit

   ````

---
