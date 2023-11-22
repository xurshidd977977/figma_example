import 'package:flutter/material.dart';
import '../back_arrow.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final bool _validate = false;
  final bool _isHidden = true;

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
                  hintText: "Username",
                  errorText: _validate ? "Please enter your email" : null,
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Email",
                  errorText: _validate ? "Please enter your password" : null,
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText: _isHidden,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Password",
                  errorText: _validate ? "Please enter your password" : null,
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText: _isHidden,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Confirm password",
                  errorText: _validate ? "Please enter your password" : null,
                ),
              ),
              const SizedBox(height: 20),
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
                  "Agree and Register",
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
              const SizedBox(height: 20),
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
                      child: Image.asset(
                        "assets/facebook.png",
                        height: 26,
                        width: 26,
                      ),
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
                      child: Image.asset(
                        "assets/google.png",
                        height: 26,
                        width: 26,
                      ),
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
                      child: Image.asset(
                        "assets/apple.png",
                        height: 26,
                        width: 26,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
