

import 'package:flutter/material.dart';

import '../../shared/components/appcolors_screen.dart';
import '../../shared/components/components_screen.dart';
import '../welcome/welcome_screen.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                          txt: "Login Now",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      customText(
                          txt: "Please login to continue using our app.",
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          )),
                      const SizedBox(height: 20),
                      CustomTextField(Lone: "Email", Htwo: "Email"),
                      const SizedBox(height: 20),
                      CustomTextField(Lone: "Password", Htwo: "Password"),
                      const SizedBox(height: 0),
                      InkWell(
                        child: SignUpContainer(st: "LogIn"),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const WelcomeScreen()));
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        child: RichText(
                          text: RichTextSpan(
                              one: "Don’t have an account ? ", two: "Sign Up"),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignupScreen()));
                        },
                      ),
                      InkWell(
                        child: TextButton(
                          onPressed: null,
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColors.kBlueColor,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignupScreen()));
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