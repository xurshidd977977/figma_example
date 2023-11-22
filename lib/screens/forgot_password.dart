import 'package:figma_example/screens/login.dart';
import 'package:flutter/material.dart';
import 'otpVerification.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

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
              Container(
                width: 41,
                height: 41,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, size: 19),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 35),
              const Text(
                "Forgot Password?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Don't worry! It occurs. Please enter the email address linked with your account.",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 60),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter your email",
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OTPVerificationPage(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(width: 1.5),
                    ),
                    minimumSize: const Size(350, 60),
                    backgroundColor: Colors.black),
                child: const Text(
                  "Send Code",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              const SizedBox(height: 300),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Row(
                  children: [
                    const Text(
                      "Remember Password?",
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
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Login",
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
}
