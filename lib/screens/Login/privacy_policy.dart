import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

String para1 =
    "Política de Privacidade \nCarvalho construiu o Mood- & app como um aplicativo gratuito. Este SERVIÇO é prestado pela Carvalho sem custos e destina-se a ser utilizado tal como está.";

String para2 =
    "Esta página é usada para informar os visitantes sobre minhas políticas de coleta, uso e divulgação de Informações Pessoais, caso alguém decida usar meu Serviço.";
String para3 =
    "Se você optar por usar meu Serviço, você concorda com a coleta e uso de informações em relação a esta política. As Informações Pessoais que recolho são utilizadas para fornecer e melhorar o Serviço. Não irei usar ou compartilhar suas informações com ninguém, exceto conforme descrito nesta Política de Privacidade.";

class PrivacyPolicy extends StatelessWidget {
  static String routeName = "/privacypolicy";
  const PrivacyPolicy({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: kWhiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back_ios, size: 30, color: kPrimaryColor),
                    SizedBox(width: getProportionateScreenWidth(30)),
                    Container(
                      width: getProportionateScreenWidth(200),
                      height: getProportionateScreenHeight(190),
                      child: Image(
                          image: AssetImage('assets/images/appicon.png'),
                          fit: BoxFit.cover),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Privacy policy:',
                      style: kMediumHeading.copyWith(
                          color: kPrimaryColor, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,
                        size: 26, color: kPrimaryColor),
                  ],
                ),
                Text(
                  para1,
                  style:
                      kSmallHeading.copyWith(color: kBlackColor, height: 1.5),
                ),
                SizedBox(height: 7),
                Text(
                  para2,
                  style:
                      kSmallHeading.copyWith(color: kBlackColor, height: 1.5),
                ),
                SizedBox(height: 7),
                Text(
                  para3,
                  style:
                      kSmallHeading.copyWith(color: kBlackColor, height: 1.5),
                )
              ],
            ),
          ),
        ));
  }
}
