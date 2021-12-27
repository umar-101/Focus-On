import 'package:flutter/material.dart';
import 'package:jsontoclass/components/appBarSecondary.dart';
import 'package:jsontoclass/components/peer_tabs.dart';
import '../../constants.dart';
import '../../size_config.dart';

class PeerSupportScreen extends StatelessWidget {
  static String routeName = "/peersupportscreen";
  const PeerSupportScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: kWhiteColor,
        body: Container(
          decoration: BoxDecoration(
            gradient: singleScreenGradient,
          ),
          child: Column(
            children: [
              AppBarSecondary(
                title: 'Peer support',
              ),
              PeerSupportTabs(
                title: 'Depression',
                press: () {
                  Navigator.pushNamed(context, "/peergrprulescreen");
                },
                imageUrl: 'assets/images/depression.jpg',
              ),
              PeerSupportTabs(
                title: 'Stress',
                press: () {},
                imageUrl: 'assets/images/stress.jpg',
              ),
              PeerSupportTabs(
                title: 'Anxiety',
                press: () {},
                imageUrl: 'assets/images/anxiety.jpg',
              ),
              PeerSupportTabs(
                title: 'Mental Health',
                press: () {},
                imageUrl: 'assets/images/mentalhealth.jpg',
              ),
              // Expanded(
              //   child: Container(),
              // )
            ],
          ),
        ));
  }
}
