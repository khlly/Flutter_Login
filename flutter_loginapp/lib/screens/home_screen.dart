import 'package:flutter/material.dart';
import './login_screen.dart';

// Home Screen
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello, Welcome!'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text(
              style: TextStyle(color: Colors.white), // Texte en blanc
              'Log Out'
            ),
            ),
          ],
        ),
      ),
    );
  }
}
