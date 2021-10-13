import 'package:flutter/material.dart';
import 'package:flutter_screen_lock/functions.dart';
import 'package:jsontoclass/components/solid_button.dart';
import 'package:jsontoclass/screens/PayOrder/pay_order.dart';
import 'package:jsontoclass/screens/home/components/tableDialog.dart';
import 'package:jsontoclass/screens/home/home.dart';
import 'package:jsontoclass/size_config.dart';
import 'package:local_auth/local_auth.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> localAuth(BuildContext context) async {
    final localAuth = LocalAuthentication();
    final didAuthenticate = await localAuth.authenticate(
      localizedReason: 'Please authenticate',
      biometricOnly: true,
    );
    print(didAuthenticate);
    if (didAuthenticate) {
      print('Authenticated');
    }
  }

  bool _checkConfiguration() => true;

  void initState() {
    super.initState();
    if (_checkConfiguration()) {
      Future.delayed(Duration.zero, () {
        showDialog(
          context: context,
          builder: (context) => CustomDialog(
            title: "Enter Venue Key",
            hintText: 'Venue Key',
            onSubmit: () {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => buttonDialog(
                    // title: "Enter Device Name",
                    // hintText: 'Device Name ',
                    // onSubmit: () {
                    //   showDialog<String>(
                    //     context: context,
                    //     builder: (BuildContext context) => buttonDialog(),
                    //   );
                    // },
                    ),
              );
            },
          ),
        );
      });
    }
  }

  AlertDialog buttonDialog() {
    return AlertDialog(
      backgroundColor: Colors.blue,
      title: Text(
        "Licenses Available:19",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SplashScreen()),
              );
            },
            child: Text(
              'Cancel'.toUpperCase(),
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            )),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CustomDialog(
                    title: "Enter Device Name",
                    hintText: 'Device Name ',
                    onSubmit: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SplashScreen()),
                      );
                    },
                  ),
                ),
              );
            },
            child: Text(
              'claim license'.toUpperCase(),
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: getProportionateScreenHeight(40)),
              Text(
                'Focus',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              Center(
                child: Text(
                  'handheld\n Focus Development\n Version:1.2.07',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      height: 2,
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Spacer(),
              Container(
                height: 60,
                child: SolidButton(
                  title: 'LogIn',
                  bgColor: Colors.blue,
                  // press: () {
                  //   screenLock<void>(
                  //     context: context,
                  //     correctString: '1234',
                  //     canCancel: false,
                  //   );
                  // },
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  final String title;
  final String hintText;
  final Function onSubmit;
  const CustomDialog({
    Key key,
    this.title,
    this.hintText,
    this.onSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue,
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
      content: TextField(
        style: TextStyle(color: Colors.white),
        onEditingComplete: onSubmit,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey.shade200,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
