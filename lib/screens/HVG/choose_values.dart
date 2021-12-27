import 'package:flutter/material.dart';
import 'package:jsontoclass/components/appBarSecondary.dart';

import '../../constants.dart';
import '../../size_config.dart';

List feelings = [
  'worried',
  'happy',
  'anxious',
  'grattitude',
  'spiritulasim',
  'selfcompassion',
  'distressed',
  'awesome',
  'fun',
  'exhausted',
  'bored',
  'stressed',
  'content',
  'loneliness',
  'calm',
  'depressed',
  'angry',
  'professionalism',
  'furious',
  '+',
];

class ChooseValueScreen extends StatefulWidget {
  static String routeName = "/choosevaluescreen";
  const ChooseValueScreen({Key key}) : super(key: key);

  @override
  _ChooseValueScreenState createState() => _ChooseValueScreenState();
}

class _ChooseValueScreenState extends State<ChooseValueScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: bgGradient,
            //   image: DecorationImage(
            // image: AssetImage('assets/images/bgmind.png'),
            // fit: BoxFit.fitWidth,
            // )
          ),
          child: Column(
            children: [
              AppBarSecondary(
                  title: 'Values, Goals &\nHealth',
                  press: () {
                    Navigator.pushNamed(context, "/setgoalsscreen");
                  }),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: getProportionateScreenWidth(40)),
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.70),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color(0xFF69F6FF),
                        width: 1,
                      )),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on, color: kPrimaryColor),
                          SizedBox(width: 10),
                          Text('Ask yourself:',
                              style: kLargeHeading.copyWith(
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                          '“What are the important principles that you want to guide your life, that even when no one can see you, they are  still important ?”',
                          style: kSmallHeading.copyWith(
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: getProportionateScreenWidth(20)),
                    width: SizeConfig.screenWidth,
                    decoration: BoxDecoration(
                        color: Color(0xFF05CAB2),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Color(0xFF69F6FF),
                          width: 1,
                        )),
                    child: (Text(
                        'Drag the examples or write those you consider to be paramount in your life:',
                        style: kSmallHeading.copyWith(
                            fontWeight: FontWeight.bold)))),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.screenHeight * 0.34,
                  child: Expanded(
                    child: Container(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 2.1,
                        ),
                        itemBuilder: (_, index) => Padding(
                          padding: const EdgeInsets.only(right: 4.0, bottom: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF07EF80).withOpacity(0.56),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 0.9,
                                    color:
                                        Color(0xFF07EF80).withOpacity(0.56))),
                            child: Center(
                              child: Text(
                                feelings[index].toString().toUpperCase(),
                                style: kSmallHeading.copyWith(fontSize: 10.5),
                              ),
                            ),
                          ),
                        ),
                        itemCount: feelings.length,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight * 0.30,
                    decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: Color(0xFF69F6FF).withOpacity(0.6))),
                    child: Center(
                        child: Image(
                            image:
                                AssetImage('assets/images/valuegoals.png')))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
