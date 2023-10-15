import 'package:flutter/material.dart';
import 'package:mycart/controller/singupcontroller.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  signupController.signupfunction(context);
                },
                child: const Text('Signup'))
          ],
        ),
      ),
    );
  }
}
