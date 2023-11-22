import 'package:figma_example/back_arrow.dart';
import 'package:figma_example/screens/registerPage.dart';
import 'package:flutter/material.dart';
import 'forgot_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final bool _validate = false;
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70),
              const BackArrow(),
              const SizedBox(height: 35),
              const Text(
                "Welcome back! Glad to see you, Again!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              const SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter your email",
                  errorText: _validate ? "Please enter your email" : null,
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText: _isHidden,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter your password",
                  errorText: _validate ? "Please enter your password" : null,
                  suffixIcon: InkWell(
                    onTap: _togglePasswordView,
                    child: Icon(
                        _isHidden ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPasswordPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 45),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(width: 1.5),
                    ),
                    minimumSize: const Size(350, 60),
                    backgroundColor: Colors.black),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey[400],
                    ),
                  ),
                  Text(
                    " Or Login with ",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 56,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xFFDADADA),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Image.asset("assets/facebook.png",
                          height: 26, width: 26),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 56,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xFFDADADA),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Image.asset("assets/google.png",
                          height: 26, width: 26),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 56,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xFFDADADA),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Image.asset("assets/apple.png",
                          height: 26, width: 26),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Register Now",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(
      () {
        _isHidden = !_isHidden;
      },
    );
  }
}
