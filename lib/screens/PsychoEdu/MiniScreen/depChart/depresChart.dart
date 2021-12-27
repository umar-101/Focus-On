import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class DepChartScreen extends StatelessWidget {
  static String routeName = "/depchartscreen";
  const DepChartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: kWhiteColor,
        appBar: AppBar(
          backgroundColor: Color(0xFF3C54B4).withOpacity(0.6),
          title: Text(
            'Depression',
            style: kMediumHeading.copyWith(fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.arrow_back_ios,
            color: kWhiteColor,
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              color: Color(0xFF3C54B4).withOpacity(0.6),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(25),
                    vertical: getProportionateScreenHeight(15)),
                child: Column(
                  children: [
                    GradientContainer(
                      color: Color(0xFF06BD9C),
                      title: 'Diagnosis',
                      duration: '5 m',
                      press: () {
                        Navigator.pushNamed(context, "/depblogscreen");
                      },
                    ),
                    Container(width: 3, height: 15, color: kBlackColor),
                    GradientContainer(
                      color: Color(0xFF8306BD),
                      title: 'How to overcome?',
                      duration: '3 m',
                    ),
                    Container(width: 3, height: 15, color: kBlackColor),
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        height: SizeConfig.screenHeight * 0.20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/anxiety.jpg'),
                              colorFilter: new ColorFilter.mode(
                                  Colors.black.withOpacity(0.90),
                                  BlendMode.dstATop),
                              fit: BoxFit.cover),
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Talking about\ndepression',
                              style: kSmallHeading.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              child: Image(
                                width: getProportionateScreenWidth(80),
                                height: getProportionateScreenHeight(70),
                                image:
                                    AssetImage('assets/images/playbutton.png'),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Text('2m', style: kSmallHeading)
                          ],
                        )),
                    Container(width: 3, height: 15, color: kBlackColor),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.screenWidth * 0.20),
                      child: GradientContainer(
                        color: Color(0xFFDE982F),
                        title: 'You are not\n      alone',
                        duration: '3 m',
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(width: 3, height: 15, color: kBlackColor),
            Text(
              'Resources',
              style: kMediumHeading.copyWith(
                color: Color(0xFF13C6FF),
              ),
            ),
            SizedBox(height: 25),
            Row(
              children: [
                CircleContainer(
                  title: 'Chat',
                  imageUrl: 'assets/icons/chat.png',
                  color: kBlackColor,
                ),
                CircleContainer(
                  title: 'Professional',
                  imageUrl: 'assets/icons/professional.png',
                  color: Color(0xFF3C4FF8),
                ),
                CircleContainer(
                  title: 'Values &\n  Goals',
                  imageUrl: 'assets/icons/valuesgoals.png',
                  color: Color(0xFFD91313),
                ),
              ],
            )
          ],
        )));
  }
}

class CircleContainer extends StatelessWidget {
  final String title, imageUrl;
  final Color color;
  const CircleContainer({
    Key key,
    this.title,
    this.imageUrl,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: kSmallHeading.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Container(
              width: getProportionateScreenWidth(45),
              height: getProportionateScreenHeight(40),
              child: Image(
                image: AssetImage(imageUrl),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GradientContainer extends StatelessWidget {
  final String title, duration;
  final Color color;
  final Function press;
  const GradientContainer({
    Key key,
    this.title,
    this.duration,
    this.color,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight * 0.15,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(-0.8, -0.6),
            colors: [
              color,
              Color(0xFF3C54B4),
              Color(0xFF00B9F3).withOpacity(0.5)
            ],
            radius: 5.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(title,
                style: kLargeHeading.copyWith(
                    fontWeight: FontWeight.bold, fontSize: 28)),
            Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding:
                      EdgeInsets.only(right: getProportionateScreenWidth(60)),
                  child: Text(duration, style: kSmallHeading),
                )),
          ],
        ),
      ),
    );
  }
}
