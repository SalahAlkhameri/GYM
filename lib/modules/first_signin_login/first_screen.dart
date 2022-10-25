import 'package:flutter/material.dart';

import '../../shared/components/components_screen.dart';
import '../login_signup/login_screen.dart';
import '../login_signup/signup_screen.dart';

class firstScreen extends StatefulWidget {
  const firstScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<firstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 13),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      customText(
                          txt: "Welcome",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      customText(
                          txt:
                          "Please login or sign up to continue using our app.",
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      Image.asset("image/home.png"),
                      const SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        child: SignUpContainer(st: "Sign Up"),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignupScreen()));
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        child: SignUpContainer(st: "Log in"),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                        },
                      ),
                      //Text("data"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
    );
  }
}