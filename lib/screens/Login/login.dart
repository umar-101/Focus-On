import 'package:flutter/material.dart';
import 'package:jsontoclass/components/loginRegButtons.dart';
import 'package:jsontoclass/constants.dart';

import '../../size_config.dart';

List users = ['user1', 'user2', 'user3'];
List passwords = ['password1', 'password2', 'password3'];

class LoginScreen extends StatefulWidget {
  static String routeName = "/login";

  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final passController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    passController.dispose();
    super.dispose();
  }

  checkUser() {
    var username = nameController.text;
    var password = passController.text;

    if (users.contains(username) && passwords.contains(password)) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                      Navigator.pushNamed(context, "/register");
                    },
                    title: 'Register',
                    bgColor: Color(0xFFAFAFAF).withOpacity(0.2),
                  ),
                  LoginRegButton(
                    press: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    title: 'LogIn',
                    bgColor: kWhiteColor,
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextInputField(
                hinttext: 'Enter your username',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter username';
                  }
                  return null;
                },
                controller: nameController,
              ),
              TextInputField(
                hinttext: 'Password',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  } else if (value.length < 8) {
                    return 'Password must be atleast 8 characters';
                  }
                  return null;
                },
                controller: passController,
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  //listCheck();
                  if (_formKey.currentState.validate()) {
                    if (checkUser() == true) {
                      Navigator.pushNamed(context, '/moodTrack');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('User not found')),
                      );
                    }
                  }
                },
                child: Container(
                  width: getProportionateScreenWidth(140),
                  height: 45,
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Log In',
                      style: kMediumHeading,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}

class TextInputField extends StatelessWidget {
  final String hinttext;
  final Function validator;
  final TextEditingController controller;

  const TextInputField({
    Key key,
    this.hinttext,
    this.validator,
    this.controller,
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
          child: TextFormField(
            decoration: InputDecoration(
                hintText: hinttext,
                contentPadding: EdgeInsets.all(10),
                border: InputBorder.none),
            onChanged: (value) {},
            validator: validator,
            controller: controller,
          ),
        ),
      ),
    );
  }
}
