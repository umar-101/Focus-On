import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';
import 'components/topStack.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/homeScreen";
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: kWhiteColor,
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/home/bghome.png'),
              fit: BoxFit.cover,
            )),
            child: Column(
              children: [
                TopStack(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          PictureTabs(
                            imageUrl: "assets/images/home/mood.jpg",
                            title: 'Mood\nCheck in',
                            height: SizeConfig.screenHeight * 0.20,
                          ),
                          PictureTabs(
                            imageUrl: "assets/images/home/valuesgoals.jpg",
                            title: 'Value\n& Goals',
                            height: SizeConfig.screenHeight * 0.20,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          PictureTabs(
                            imageUrl: "assets/images/home/peersupport.jpg",
                            title: 'Peer\nSupport',
                            height: SizeConfig.screenHeight * 0.20,
                          ),
                          PictureTabs(
                            imageUrl: "assets/images/home/mentalhealth.jpg",
                            title: 'Mental\nHealth',
                            height: SizeConfig.screenHeight * 0.20,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          PictureTabs(
                            imageUrl: "assets/images/home/mindfulness.jpg",
                            title: 'Mindfullness',
                            height: SizeConfig.screenHeight * 0.20,
                          ),
                          PictureTabs(
                            imageUrl: "assets/images/home/results.jpg",
                            title: 'Results',
                            height: SizeConfig.screenHeight * 0.20,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          PictureTabs(
                            imageUrl: "assets/images/home/helpline.jpg",
                            title: 'Helpline',
                            height: SizeConfig.screenHeight * 0.15,
                            press: () {
                              Navigator.pushNamed(context, "/mindfulness");
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class PictureTabs extends StatelessWidget {
  final String imageUrl, title;
  final double height;
  final Function press;
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
              height: height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imageUrl),
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.90), BlendMode.dstATop),
                    fit: BoxFit.cover),
                // color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                  child: (Text(
                title,
                style: kLargeHeading.copyWith(
                    fontWeight: FontWeight.bold, fontSize: 24),
              )))),
        ),
      ),
    );
  }
}
