import 'package:flutter/material.dart';
import 'package:mycart/controller/singupcontroller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
    final SignupController signupController = SignupController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  
                ),
                fillColor: Colors.grey,
                filled: true
              ),
              controller: signupController.emai,
            ),
            TextFormField(
              controller: signupController.pass,
            ),
            ElevatedButton(
                onPressed: () {
                  signupController.Loginfunction(context);
                },
                child: const Text('Login'))
          ],
        ),
      ),
    );
  }
}
