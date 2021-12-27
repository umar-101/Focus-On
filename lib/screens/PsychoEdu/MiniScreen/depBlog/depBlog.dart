import 'package:flutter/material.dart';
import 'package:jsontoclass/components/bottomNavBar.dart';
import 'package:jsontoclass/constants.dart';

import '../../../../size_config.dart';

String para1 =
    "     It used to be that all mood disorders were lumped together. Now, a doctor will make a distinction about the particular disorder or subtype of depression that a patient has. For example, a doctor will determine whether a patient has major depression, chronic depression including dysthymia, seasonal affective disorder (SAD), bipolar disorder, or some other type of clinical depression.";
String para2 =
    "It can be hard to talk to your doctor if you think you might be depressed. You may feel embarrassed or isolated. But you’re not as alone as you might think. About 1 in 5 people will have some sort of mental illness in their lifetime";

String para3 =
    "In addition, depression rarely goes away by itself and may even get worse without treatment. So it’s important to reach out when you notice symptoms. Your primary care doctor is a good place to start. They’ll be able to help you sift through your symptoms and perhaps refer you to a mental health expert like a psychologist, psychiatrist, or a therapist who can help you further.";

String para4 =
    "We've gotten used to doctors using special blood tests or other complex laboratory tests to help them make a conclusive diagnosis. But most lab tests aren’t very helpful when it comes to diagnosing depression. In fact, talking with the patient may be the most important diagnostic tool the doctor has. The recommendation is that doctors routinely screen everyone for depression. This screening might take place during a visit for a chronic illness, at an annual wellness visit, or during a pregnancy or postpartum visit.";

class DepBlogScreen extends StatelessWidget {
  static String routeName = "/depblogscreen";
  const DepBlogScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        title: Text(
          'Depression',
          style: kMediumHeading.copyWith(fontWeight: FontWeight.bold),
        ),
        // leading: Icon(Icons.arrow_back_ios, color: kWhiteColor),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/peersupportscreen");
            },
            icon: Icon(Icons.arrow_back_ios, color: kWhiteColor)),
        centerTitle: true,
        backgroundColor: Color(0xFF502243),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(30),
              vertical: getProportionateScreenHeight(15)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Diagnosis',
                style: kMediumHeading.copyWith(
                    fontWeight: FontWeight.bold, color: kBlackColor)),
            SizedBox(height: 5),
            Text(
              para1,
              style: kSmallHeading.copyWith(color: kBlackColor, height: 1.5),
            ),
            SizedBox(height: 5),
            Image(
              image: AssetImage('assets/images/depcharttable.png'),
            ),
            SizedBox(height: 5),
            Text(
              para2,
              style: kSmallHeading.copyWith(color: kBlackColor, height: 1.5),
            ),
            SizedBox(height: 10),
            Text(
              para3,
              style: kSmallHeading.copyWith(color: kBlackColor, height: 1.5),
            ),
            SizedBox(height: 5),
            Text('How Does a Doctor Make a Depression Diagnosis?',
                style: kMediumHeading.copyWith(
                    fontWeight: FontWeight.bold, color: kBlackColor)),
            SizedBox(height: 5),
            Text(
              para4,
              style: kSmallHeading.copyWith(color: kBlackColor, height: 1.5),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
