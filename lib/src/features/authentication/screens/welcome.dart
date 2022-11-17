import 'package:crud_mobile_app/src/features/authentication/screens/login.dart';
import 'package:crud_mobile_app/src/features/authentication/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Container(
            alignment: Alignment.center,
            child: const Text(
              "Welcome",
              style: TextStyle(fontSize: 50),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0)),
                minimumSize: const Size(100, 40), //////// HERE
              ),
              onPressed: () => Get.to(() => const Login()),
              child: const Text('Login'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0)),
                minimumSize: const Size(100, 40), //////// HERE
              ),
              onPressed: () => Get.to(() => const Signup()),
              child: const Text('SignUp'),
            )
          ],
        ),
      ],
    )));
  }
}
