import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const Text(
                "Welcome Back!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Form(
                  child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Username",
                        prefixIcon: Icon(Icons.person_outline),
                        hintText: "Username",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: const Icon(Icons.fingerprint),
                      hintText: "Password",
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove_red_eye_sharp)),
                    )),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: const Text(
                        "Forgot Password",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        child: OutlinedButton(
                            onPressed: () {}, child: const Text("Login")))
                  ],
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
