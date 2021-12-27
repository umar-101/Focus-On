import 'package:flutter/material.dart';
import 'package:jsontoclass/components/appBarSecondary.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../constants.dart';
import '../../size_config.dart';
import 'components/musictabs.dart';

class MindfulnesScreen extends StatelessWidget {
  static String routeName = "/mindfulness";
  const MindfulnesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          gradient: singleScreenGradient,
        ),
        child: Column(
          children: [
            AppBarSecondary(
              title: 'Mindfullness',
              press: () {
                Navigator.pushNamed(context, "/psychoeduscreen");
              },
            ),
            MusicTabs(
              title: 'Body Scan',
              imageUrl: 'assets/images/body.png',
              duration: '5 m',
              press: () {},
            ),
            MusicTabs(
              title: 'Eating Mindful',
              imageUrl: 'assets/images/food.png',
              duration: '8 m',
              press: () {},
            ),
            MusicTabs(
              title: 'Deep Listening',
              imageUrl: 'assets/images/ear.png',
              duration: '5 m',
              press: () {},
            ),
            MusicTabs(
              title: 'Deep Seeing',
              imageUrl: 'assets/images/eye.png',
              duration: '4 m',
              press: () {},
            ),
            Row(
              children: [
                PictureTabs(
                  title: 'Breathing\nexcersise',
                  duration: '2 m',
                  imageUrl: 'assets/images/mindman.jpg',
                ),
                PictureTabs(
                  title: 'Stretching\n      ',
                  duration: '5 m',
                  imageUrl: 'assets/images/mindwomen.jpg',
                ),
                PictureTabs(
                  title: 'Breathing\nexcersise',
                  duration: '4 m',
                  imageUrl: 'assets/images/mindman.jpg',
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
                child: CircularPercentIndicator(
              radius: getProportionateScreenWidth(110),
              lineWidth: getProportionateScreenWidth(12),
              percent: 0.5,
              center: Center(child: Text('    2\nLevel', style: kLargeHeading)),
              progressColor: Color(0xFF23FF7B),
            )),
            SizedBox(height: 20),
          ],
        ),
      ),
    ));
  }
}

class PictureTabs extends StatelessWidget {
  final String imageUrl, title;
  final String duration;
  const PictureTabs({
    Key key,
    this.imageUrl,
    this.title,
    this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(13),
        child: Container(
            height: SizeConfig.screenHeight * 0.18,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imageUrl),
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.70), BlendMode.dstATop),
                    fit: BoxFit.cover),
                // color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(width: 1, color: Color(0xFF69F6FF))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: kSmallHeading.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  child: Image(
                    width: getProportionateScreenWidth(70),
                    height: getProportionateScreenHeight(60),
                    image: AssetImage('assets/images/playbutton.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),

                // Icon(
                //   Icons.play_circle_outlined,
                //   size: 40,
                //   color: Color(0xFFFE0000),
                // ),
                Text(duration, style: kSmallHeading)
              ],
            )),
      ),
    );
  }
}
