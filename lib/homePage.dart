import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            TextButton(onPressed: () {}, child: Text("Login")),
            TextButton(onPressed: () {}, child: Text("Register")),
          ],
        ),
      ),
    );
  }
}
