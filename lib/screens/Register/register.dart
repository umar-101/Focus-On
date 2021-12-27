import 'package:flutter/material.dart';
import 'package:jsontoclass/components/loginRegButtons.dart';
import 'package:jsontoclass/components/solidRoundBtn.dart';
import 'package:jsontoclass/constants.dart';

import '../../size_config.dart';
import 'dropdownfield.dart';
import '../../components/privacyContainer.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = "/register";

  const RegisterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              width: getProportionateScreenWidth(230),
              height: getProportionateScreenHeight(210),
              child: Image(
                image: AssetImage('assets/images/appicon.png'),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                LoginRegButton(
                  press: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  title: 'Register',
                  bgColor: kWhiteColor,
                ),
                LoginRegButton(
                  press: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  title: 'LogIn',
                  bgColor: Color(0xFFAFAFAF).withOpacity(0.2),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextInputField(
              hinttext: 'Enter your name',
            ),
            TextInputField(
              hinttext: 'Enter your email',
            ),
            TextInputField(
              hinttext: 'Enter your DOB',
            ),
            DropFormField(),
            TextInputField(
              hinttext: 'Profession',
            ),
            TextInputField(
              hinttext: 'Password',
            ),
            TextInputField(
              hinttext: 'Confirm Password',
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(40)),
              child: Text(
                'Read privacy and informed consent before sign up:',
                style: kMediumHeading.copyWith(
                    color: kPrimaryColor, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            PrivacyContainer(),
            TextButtonRow(
              text: 'Privacy politics complete.',
              press: () {},
            ),
            TextButtonRow(
              text: 'Informed consent complete.',
              press: () {},
            ),
            SolidRoundButton(
              title: 'I agree',
              press: () {
                Navigator.pushNamed(context, "/moodTrack");
              },
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

class TextButtonRow extends StatelessWidget {
  final String text;
  final Function press;
  const TextButtonRow({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
        ),
        TextButton(
            onPressed: press,
            child: Text(
              'Click here.',
              style: TextStyle(
                  color: kPrimaryColor, decoration: TextDecoration.underline),
            ))
      ],
    );
  }
}

class TextInputField extends StatelessWidget {
  final String hinttext;

  const TextInputField({
    Key key,
    this.hinttext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(10),
          horizontal: getProportionateScreenWidth(40)),
      child: Container(
        alignment: Alignment.center,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  width: 1,
                  color: Color(0xFF3C54B4),
                  style: BorderStyle.solid)),
          child: TextField(
            decoration: InputDecoration(
                hintText: hinttext,
                contentPadding: EdgeInsets.all(10),
                border: InputBorder.none),
            onChanged: (value) {},
          ),
        ),
      ),
    );
  }
}
