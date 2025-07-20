import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_page.dart';

class ProfilePage extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Logged in as:', style: TextStyle(fontSize: 18)),
            Text(user?.email ?? 'No Email', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginPage()));
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
