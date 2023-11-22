import 'package:figma_example/screens/login.dart';
import 'package:figma_example/screens/registerPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 450),
            child: Column(
              children: [
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
                    "Login",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 15),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(width: 1.5),
                    ),
                    minimumSize: const Size(350, 60),
                  ),
                  child: const Text(
                    "Register",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                const SizedBox(height: 150),
                const Text(
                  "Continue as a guest",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
