import 'package:flutter/material.dart';
import 'package:jsontoclass/size_config.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/login";
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 45, right: 45, top: 100, bottom: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BuildSteric(),
                BuildSteric(),
                BuildSteric(),
                BuildSteric(),
              ],
            ),
          ),
          // SizedBox(height: 50),
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Expanded(
              child: Container(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: keyPadLetter(title: '1')),
                      Expanded(child: keyPadLetter(title: '2')),
                      Expanded(child: keyPadLetter(title: '3'))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: keyPadLetter(title: '4')),
                      Expanded(child: keyPadLetter(title: '5')),
                      Expanded(child: keyPadLetter(title: '6'))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: keyPadLetter(title: '7')),
                      Expanded(child: keyPadLetter(title: '8')),
                      Expanded(child: keyPadLetter(title: '9'))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: keyPadLetter(title: 'DEL')),
                      Expanded(child: keyPadLetter(title: '0')),
                      Expanded(child: keyPadLetter(title: 'BACK'))
                    ],
                  ),
                ],
              )),
            ),
          )
        ],
      ),
    );
  }
}

class keyPadLetter extends StatelessWidget {
  final String title;

  const keyPadLetter({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Color(0xFF242324),
        border: Border.all(color: Color(0xFF3790A7), width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
    );
  }
}

class BuildSteric extends StatelessWidget {
  const BuildSteric({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '*',
      style: TextStyle(
          fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}
