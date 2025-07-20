import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'signup_page.dart';
import 'profile_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ProfilePage()),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login Failed: ${e.toString()}")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.login_rounded,
                  size: 80, color: Colors.deepPurple),
              SizedBox(height: 20),
              Text(
                'Welcome Back!',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple),
              ),
              SizedBox(height: 30),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding:
                  EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                child: Text('Login', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SignupPage())),
                child: Text(
                  "Don't have an account? Sign up",
                  style: TextStyle(color: Colors.deepPurple),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
