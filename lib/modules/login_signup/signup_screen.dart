

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/components/appcolors_screen.dart';
import '../../shared/components/components_screen.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _value = false;
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
                          txt: "Sign Up",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      customText(
                          txt: "Please sign up to enter in a app.",
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          )),
                      const SizedBox(height: 20),
                      CustomTextField(Lone: "Your Name", Htwo: "Name"),
                      const SizedBox(height: 20),
                      CustomTextField(Lone: "Phone", Htwo: "Phone"),
                      const SizedBox(height: 20),
                      CustomTextField(Lone: "GYM Name", Htwo: "GYM Name"),
                      const SizedBox(height: 20),
                      CustomTextField(Lone: "Street", Htwo: "Street"),
                      const SizedBox(height: 20),
                      CustomTextField(Lone: "Password", Htwo: "Password"),
                      const SizedBox(height: 20),
                      InkWell(
                        child: SignUpContainer(st: "Sign Up"),
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        child: RichText(
                          text: RichTextSpan(
                              one: "Already have an account ? ", two: "Login"),
                        ),
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