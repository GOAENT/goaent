import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text('Login Page')),
     body: Center(
      child: FloatingActionButton.extended(
        onPressed: () {
          GoogleSignIn().signIn();
        },
        //icon: Icon {Icons.security},
        icon: Image.asset(
          'assets/images/google_logo.png',
          height: 32,
          width: 32,
        ),
        label: Text("Sign in with Google"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      )
    )
    );
  }
}