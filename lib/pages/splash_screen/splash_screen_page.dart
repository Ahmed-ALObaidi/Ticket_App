import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newdishticket/utilize/app_colors.dart';
import 'package:newdishticket/utilize/dimentions.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  double percent = 0.0;

  @override
  void initState() {
    late Timer timer;
    timer = Timer.periodic(Duration(milliseconds: 500),
            (_){
          setState(() {
            percent+=10;
            if(percent >= 100){
              timer.cancel();
              // Navigator.of(context).pushReplacement( MaterialPageRoute(
              //           builder: (context) => ChooseCompanyPage(),
              //         ),);
            }
          });
        }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Stack(
        children: [
          Positioned(
            bottom: Dimentions.screenHeight * 0,
            top: Dimentions.screenHeight * 0.37,
            child: Image.asset('assets/images/traffic-vector.png'),
          ),
          Positioned(
            top:  Dimentions.screenHeight * 0.155,
            left: (Dimentions.screenWidth /2) - (Dimentions.screenWidth*0.3/2),
            child: Image.asset('assets/images/dish-logo1.png', width: Dimentions.screenWidth*0.3),
          ),
          Positioned(
            top: Dimentions.screenHeight*0.9,
            left: (Dimentions.screenWidth/2) - (Dimentions.screenHeight*0.28/2),
            height: 5,
            width: Dimentions.screenHeight*0.28,
            child:Container(
              child: LinearPercentIndicator(
                barRadius: Radius.circular(10),
                animation: false,
                animationDuration: 500,
                lineHeight: 5,
                percent:percent/100,
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.blue[400],
                backgroundColor: AppColors.chooseCompanyCardColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
