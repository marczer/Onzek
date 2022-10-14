import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onzek/signup.dart';
import 'package:onzek/siriki/largebutton.dart';
import 'package:onzek/siriki/textformfield.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, String? title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.grey.shade200),
          padding:
              const EdgeInsets.only(bottom: 10, left: 15, right: 15, top: 100),
          child: Column(
            children: [
              const Center(
                child: Text(
                  "Login",
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
                  textvisible: false,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 45,
                child: textfield(
                  label: "Password*",
                  textvisible: true,
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
              SizedBox(
                height: 20,
              ),
              largebutton(text: 'LOGIN'),
              SizedBox(
                height: 15,
              ),
              Text(
                "OR continue with",
                style: TextStyle(fontSize: 18, color: Colors.black45),
              ),
              SizedBox(
                height: 10,
              ),
              transbutton(image: 'assets/images/google.png', text: 'Google'),
              transbutton(
                  image: 'assets/images/facebook.png', text: 'Facebook'),
              SizedBox(
                height: 190,
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
                              builder: (context) => const signup(),
                            ));
                      },
                      child: const Text("Signup"))
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
