import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Text.rich(
            TextSpan(
              text: 'Hello ',
              style: TextStyle(fontSize: 50),
              children: <TextSpan>[
                TextSpan(
                    text: 'world',
                    style: TextStyle(
                      color: Colors.amber,
                      decoration: TextDecoration.underline,
                    )),
                // can add more TextSpans here...
              ],
            ),
          )
        ],
      )),
    );
  }
}
