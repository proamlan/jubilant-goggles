import 'package:flutter/material.dart';

class SignContractScreen extends StatelessWidget {
  const SignContractScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/contract.png',
            fit: BoxFit.fill,
            alignment: Alignment.center,
          ),
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('images/Button.png'))
        ],
      ),
    );
  }
}
