import 'package:flutter/material.dart';
import 'package:newdishticket/pages/auth/auth_card.dart';
import 'package:newdishticket/utilize/app_colors.dart';
import 'package:newdishticket/widgets/text_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Container(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
                width: double.maxFinite,
                height: 120,
                margin: EdgeInsets.only(top: 130),
                child: Center(
                    child: Image.asset('assets/images/dish-logo 1.png'))),
            Container(
                margin: EdgeInsets.only(top: 80, bottom: 70),
                child: const TextWidget(
                  text: 'تسجيل الدخول',
                  textColor: Colors.white,
                  fontSize: 26,
                )),
            Container(
              padding: EdgeInsets.only(bottom: 15, left: 25, right: 25),
              child: const AuthCard(
                backgroundColor: AppColors.chooseCompanyCardColor,
                iconColor: Colors.white,
                textInputType: TextInputType.emailAddress,
                prefixIcon: Icons.markunread_outlined,
                text: 'البريد الالكتروني',
                hintFontSize: 16,
                hintColor: Colors.white,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 15, left: 25, right: 25),
              child: const AuthCard(
                backgroundColor: AppColors.chooseCompanyCardColor,
                iconColor: Colors.white,
                textInputType: TextInputType.emailAddress,
                prefixIcon: Icons.vpn_key_outlined,
                text: 'الرمز السري',
                hintFontSize: 16,
                hintColor: Colors.white,
              ),
            ),
            Container(
              width: 140,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(5)),
              margin: EdgeInsets.only(top: 25),
              child: const Center(
                  child: InkWell(
                    child: TextWidget(
                text: 'تسجيل الدخول',
                textColor: Colors.white,
              ),
                  )),
            )
          ],
        )),
      ),
    );
  }
}
