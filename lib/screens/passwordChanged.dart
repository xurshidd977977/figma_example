import 'package:flutter/material.dart';
import 'login.dart';

class PasswordChangedPage extends StatelessWidget {
  const PasswordChangedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/success.png"),
              const SizedBox(height: 30),
              const Text(
                "Password Changed!",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                textAlign: TextAlign.center,
                "Your password has been changed\n successfully.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
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
                  "Back to Login",
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
