import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const Text(
                "Sign Up!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Form(
                  child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Card(
                  borderOnForeground: false,
                  elevation: 3.0,
                  shadowColor: Colors.grey.shade400,
                  child: ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(10),
                    children: [
                      SizedBox(
                        width: 20,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              labelText: "First Name",
                              prefixIcon: Icon(Icons.abc),
                              hintText: "jhon..",
                              border: UnderlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Last Name",
                          prefixIcon: Icon(Icons.abc),
                          hintText: "khan..",
                          border: UnderlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Email",
                          prefixIcon: Icon(Icons.email),
                          hintText: "jhon@outlook.com",
                          border: UnderlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Username",
                          prefixIcon: Icon(Icons.person_outline),
                          hintText: "farhan123",
                          border: UnderlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.fingerprint),
                        hintText: "******",
                        border: const UnderlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.remove_red_eye_sharp)),
                      )),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                        errorText: "password does not match",
                        labelText: "Confirm Password",
                        prefixIcon: const Icon(Icons.confirmation_num),
                        hintText: "*******",
                        border: const UnderlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.remove_red_eye_sharp)),
                      )),
                    ],
                  ),
                ),
              )),
            ),
            Container(
                alignment: Alignment.center,
                child: OutlinedButton(
                    onPressed: () {}, child: const Text("SignUp")))
          ],
        ),
      ),
    );
  }
}
