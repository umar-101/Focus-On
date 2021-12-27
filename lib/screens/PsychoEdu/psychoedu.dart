import 'package:flutter/material.dart';
import 'package:jsontoclass/components/appBarSecondary.dart';
import 'package:jsontoclass/components/bottomNavBar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../constants.dart';
import '../../size_config.dart';

class PsychoEduScreen extends StatelessWidget {
  static String routeName = "/psychoeduscreen";
  const PsychoEduScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: singleScreenGradient,
          ),
          child: Column(
            children: [
              AppBarSecondary(
                title: 'Psychoeducation',
              ),
              Row(
                children: [
                  PictureTabs(
                    title: 'Depression',
                    imageUrl: 'assets/images/depression.jpg',
                    press: () {
                      Navigator.pushNamed(context, "/depchartscreen");
                    },
                  ),
                  PictureTabs(
                    title: 'Anxiety',
                    imageUrl: 'assets/images/anxiety.jpg',
                  ),
                ],
              ),
              Row(
                children: [
                  PictureTabs(
                    title: 'Stress',
                    imageUrl: 'assets/images/stress.jpg',
                  ),
                  PictureTabs(
                    title: 'Mental\nHealth',
                    imageUrl: 'assets/images/mentalhealth.jpg',
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth * 0.25),
                child: Row(
                  children: [
                    PictureTabs(
                      title: 'Copying\nSkills',
                      imageUrl: 'assets/images/copskills.jpg',
                    ),
                  ],
                ),
              ),
              Container(
                  child: CircularPercentIndicator(
                radius: getProportionateScreenWidth(110),
                lineWidth: getProportionateScreenWidth(12),
                percent: 0.5,
                center:
                    Center(child: Text('    2\nLevel', style: kLargeHeading)),
                progressColor: Color(0xFF23FF7B),
              )),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class PictureTabs extends StatelessWidget {
  final String imageUrl, title;
  final Function press;
  final double height;
  const PictureTabs({
    Key key,
    this.imageUrl,
    this.title,
    this.height,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(13),
        child: GestureDetector(
          onTap: press,
          child: Container(
              height: SizeConfig.screenHeight * 0.21,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Color(0xFF69F6FF),
                ),
                image: DecorationImage(
                    image: AssetImage(imageUrl),
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.70), BlendMode.dstATop),
                    fit: BoxFit.cover),
                // color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10),
                child: Text(
                  title,
                  style: kLargeHeading.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
