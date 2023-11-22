import 'package:figma_example/screens/resetPassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'forgot_password.dart';

class OTPVerificationPage extends StatelessWidget {
  const OTPVerificationPage({Key? key}) : super(key: key);

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
                "OTP Verification",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Enter the verification code we just sent on your email address.",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 60),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 9),
                      height: 60,
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 16),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 1,
                            ),
                          ),
                          fillColor: Colors.white,
                          hintStyle: const TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 9),
                      height: 60,
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 16),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 1,
                            ),
                          ),
                          fillColor: Colors.white,
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(30, 35, 44, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 9),
                      height: 60,
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 16),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 1,
                            ),
                          ),
                          fillColor: Colors.white,
                          hintStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 9),
                      height: 60,
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 16),
                          filled: false,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                          ),
                          fillColor: Colors.white,
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ResetPasswordPage(),
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
                  "Verify",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              const SizedBox(height: 290),
              Padding(
                padding: const EdgeInsets.only(left: 75),
                child: Row(
                  children: [
                    const Text(
                      "Didn't received code?",
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
                            builder: (context) => const ForgotPasswordPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Resend",
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
