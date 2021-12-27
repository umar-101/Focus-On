import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class TopStackContainer extends StatelessWidget {
  const TopStackContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: SizeConfig.screenHeight * 0.35,
          child: Image(
            image: AssetImage('assets/images/elispe.png'),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: getProportionateScreenWidth(30),
          top: getProportionateScreenHeight(70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi,Andrew',
                style: kLargeHeading.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                'How are you feeling\nthis morning?',
                style: kSmallHeading,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: getProportionateScreenHeight(80),
          left: 15,
          right: 15,
          child: Container(
            child: Row(
              children: [
                EmojiContainer(
                  emojiUrl: 'assets/icons/emveryangry.png',
                  bgColor: Color(0xFFEC201F).withOpacity(0.7),
                ),
                EmojiContainer(
                  emojiUrl: 'assets/icons/emangry.png',
                  bgColor: Color(0xFFF39921).withOpacity(0.7),
                ),
                EmojiContainer(
                  emojiUrl: 'assets/icons/emsad.png',
                  bgColor: Color(0xFFF9E419).withOpacity(0.7),
                ),
                EmojiContainer(
                  emojiUrl: 'assets/icons/emdefault.png',
                  bgColor: Color(0xFF3C54B4).withOpacity(0.7),
                ),
                EmojiContainer(
                  emojiUrl: 'assets/icons/emhappy.png',
                  bgColor: Color(0xFFC0D21E).withOpacity(0.5),
                ),
                EmojiContainer(
                  emojiUrl: 'assets/icons/emveryhappy.png',
                  bgColor: Color(0xFF72E528).withOpacity(0.7),
                ),
                EmojiContainer(
                  emojiUrl: 'assets/icons/emlaugh.png',
                  bgColor: Color(0xFF00E42B).withOpacity(0.7),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 20,
            left: MediaQuery.of(context).size.width * 0.42,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Good',
                  style: kMediumHeading.copyWith(
                      color: kBlackColor, fontWeight: FontWeight.w400),
                )))
      ],
    );
  }
}

class EmojiContainer extends StatelessWidget {
  final Color bgColor;
  final String emojiUrl;
  final Function press;
  const EmojiContainer({
    Key key,
    this.bgColor,
    this.emojiUrl,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Container(
          height: 30,
          color: bgColor,
          child: Center(
            child: Image(
              image: AssetImage(emojiUrl),
            ),
          ),
        ),
      ),
    );
  }
}
