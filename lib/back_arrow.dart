import 'package:flutter/material.dart';
import 'homePage.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              builder: (context) => const HomePage(),
            ),
          );
        },
      ),
    );
  }
}
