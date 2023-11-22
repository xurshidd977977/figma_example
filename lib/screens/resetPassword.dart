import 'package:figma_example/screens/forgot_password.dart';
import 'package:figma_example/screens/passwordChanged.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
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
                        builder: (context) => const ForgotPasswordPage(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 35),
              const Text(
                "Create new password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Your new password must be unique from those previously used.",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 60),
              TextField(
                obscureText: _isHidden,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "New Password",
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
                  hintText: "Confirm Password",
                  errorText: _validate ? "Please enter your password" : null,
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PasswordChangedPage(),
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
                  "Reset Password",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
