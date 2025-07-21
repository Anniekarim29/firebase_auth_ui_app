#  Firebase Auth UI App – Flutter 

This Flutter app demonstrates a simple and clean **Firebase Authentication flow** using Email/Password login and signup, with Firestore integration to store user data.

The goal was to build a fully functional **Login / Signup / Profile** system using Firebase Auth and Firestore, wrapped in a modern, user-friendly Flutter UI.


---

##  Features

- 🔐 Firebase Email/Password Authentication
- 📥 Signup & Login with form validation
- 👤 Profile page with user info and dummy avatar
- ☁️ Firestore integration: save user data on signup
- 🚪 Logout functionality
- 🛡️ Error handling and loading indicators
- 🎨 Clean UI using Material Design (Purple Theme)

---

## 📱 Screenshots

| Login Screen | Signup Screen | Profile Screen |
|--------------|---------------|----------------|
| ![Login](screenshots/login_screen.png) | ![Signup](screenshots/signup_screen.png) | ![Profile](screenshots/profile_screen.png) |

> 📸 Make sure the above screenshots exist in the `screenshots/` folder inside your repo.

---

## ⚙️ Firebase Setup Guide

### 🔹 Step 1: Firebase Project Setup

1. Go to [Firebase Console](https://console.firebase.google.com)
2. Create a new Firebase project
3. Add an Android app with package name:
4. Download the `google-services.json` file
5. Paste it into:


### 🔹 Step 2: Enable Authentication

1. In Firebase Console:
- Go to **Authentication > Sign-in method**
- Enable **Email/Password**

### 🔹 Step 3: Enable Firestore

1. In Firebase Console:
- Go to **Firestore Database**
- Click **Create Database**
- Choose **Start in test mode**
- Select region (e.g., `asia-south1`)
- Click Enable

### 🔹 Step 4: pubspec.yaml Dependencies

Add the following to your `pubspec.yaml`:

```yaml
firebase_core: ^2.31.0
firebase_auth: ^4.17.3
cloud_firestore: ^4.15.3
