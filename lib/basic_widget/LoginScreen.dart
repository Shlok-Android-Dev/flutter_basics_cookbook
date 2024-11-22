import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Screen')),
      body: const Center(
        child: Text(
          'This is the Login Screen!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
