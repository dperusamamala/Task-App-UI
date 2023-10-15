import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mycart/screens/home.dart';
import 'package:mycart/screens/loginview.dart';

class SignupController {
  final _auth = FirebaseAuth.instance;

  final TextEditingController emai = TextEditingController();
  final TextEditingController pass = TextEditingController();

  signupfunction(context) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: emai.text,
        password: pass.text,
      );
      pass.clear();
      emai.clear();
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LoginView();
      }));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Loginfunction(context) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
        email: emai.text,
        password: pass.text,
      );
      pass.clear();
      emai.clear();
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomePage();
      }));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
