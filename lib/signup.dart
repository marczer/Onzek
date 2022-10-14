import 'package:flutter/material.dart';
import 'package:onzek/login.dart';
import 'package:onzek/siriki/largebutton.dart';
import 'package:onzek/siriki/textformfield.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.grey.shade200),
            padding: const EdgeInsets.only(
                bottom: 10, left: 15, right: 15, top: 100),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    "Signup",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                Container(
                  height: 45,
                  child: textfield(
                    label: "Email*",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 45,
                  child: textfield(
                    label: "Number*",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 45,
                  child: textfield(
                    label: "Create password",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 45,
                  child: textfield(
                    label: "Confirm password",
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: const Color.fromARGB(255, 68, 218, 255),
                        value: check,
                        onChanged: (bool? value) {
                          setState(() {
                            check = value!;
                          });
                        },
                      ),
                      const Text('Remember me'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                largebutton(text: 'LOGIN'),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "OR continue with",
                  style: TextStyle(fontSize: 18, color: Colors.black45),
                ),
                const SizedBox(
                  height: 10,
                ),
                transbutton(image: 'assets/images/google.png', text: 'Google'),
                transbutton(
                    image: 'assets/images/facebook.png', text: 'Facebook'),
                SizedBox(
                  height: 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have Account?",
                      style: TextStyle(fontSize: 15, color: Colors.black45),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyHomePage(),
                              ));
                        },
                        child: const Text("Login"))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
