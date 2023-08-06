import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:newdishticket/utilize/app_colors.dart';
import 'package:newdishticket/utilize/dimentions.dart';
import 'package:newdishticket/widgets/text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Stack(
        children: [
          // Background img
          Positioned(
            child: Container(
              margin: EdgeInsets.only(bottom: 210, top: 10),
              height: 290,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/traffic-vector.png'),
                      fit: BoxFit.fill),
                  color: AppColors.chooseCompanyCardColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(30),
                  )),
            ),
          ),
          Positioned(
              child: Container(
            margin: EdgeInsets.only(bottom: 495, top: 10),
            height: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/traffic-vector2.png'),
                    fit: BoxFit.fill)),
          )),
          // profile Pic
          Positioned(
              top: 65,
              left: (Dimentions.screenWidth / 2) - 27,
              child: Column(
                children: [
                  Container(
                    child: const CircleAvatar(
                        radius: 33,
                        backgroundImage: AssetImage(
                          'assets/images/profile-pic.png',
                        )),
                  ),
                ],
              )),
          // Name
          Positioned(
            top: 122,
            left: (Dimentions.screenWidth / 2) - 67,
            child: Container(
              child: Center(
                  child: TextWidget(
                text: 'حيدر عبد حسين',
                fontSize: 25,
                textColor: Colors.white,
              )),
            ),
          ),
          // Status
          Positioned(
              left: (Dimentions.screenWidth / 2) - 10,
              top: 160,
              child: Container(
                child: TextWidget(text: 'متاح', textColor: Colors.white),
              )),
          // Daily Work
          Positioned(
              top: 220,
              left: 60,
              child: Container(
                width: Dimentions.screenWidth - (Dimentions.screenWidth / 1.45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: TextWidget(text: 'المهام اليومية'),
                    ),
                    Container(
                      child: Icon(
                        Iconsax.cpu,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 220,
              right: 60,
              child: Container(
                width: Dimentions.screenWidth - (Dimentions.screenWidth / 1.45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: TextWidget(text: 'المهام اليومية'),
                    ),
                    Container(
                      child: Icon(
                        Iconsax.briefcase,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )),
          // Daily Work Number
          Positioned(
              top: 230,
              left: 125,
              child: Container(
                width: Dimentions.screenWidth - (Dimentions.screenWidth / 1.75),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: TextWidget(
                        text: '5',
                        fontSize: 30,
                      ),
                    ),
                    Container(
                      child: TextWidget(
                        text: '105',
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              )),
          // Available Work Number
          Positioned(
              top: 315,
              bottom: 315,
              left: 20,
              right: 20,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child:  Stack(
                        children: [
                          Positioned(
                            child: CircleAvatar(
                              backgroundColor: Colors.blue.shade400,
                              radius: 18,
                            ),
                          ),
                          Positioned(
                            left: 11,
                            right: 11,
                            bottom: 0,
                            top: -3,
                            child: TextWidget(
                              text: '5',
                              fontSize: 22,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: TextWidget(
                              text: 'المهام المتاحة',
                              fontSize: 20,
                            ),
                          ),
                          Icon(
                            Iconsax.briefcase,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          // Sections
          Positioned(
              top: 400,
              left: 20,
              right: 20,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.chooseCompanyCardColor,
                            borderRadius: BorderRadius.circular(10)),
                        width: 165,
                        height: 110,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Icon(Iconsax.cpu,
                                  color: Colors.white, size: 35),
                            ),
                            Container(
                              child: TextWidget(
                                text: 'الاجهزة',
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Icon(Iconsax.briefcase,
                                  color: Colors.white, size: 35),
                            ),
                            Container(
                              child: TextWidget(
                                text: 'المهام',
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: AppColors.chooseCompanyCardColor,
                            borderRadius: BorderRadius.circular(10)),
                        width: 165,
                        height: 110,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Icon(Iconsax.setting_3,
                                  color: Colors.white, size: 35),
                            ),
                            Container(
                              child: TextWidget(
                                text: 'الاعدادات',
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                        width: 165,
                        height: 110,
                        decoration: BoxDecoration(
                            color: AppColors.chooseCompanyCardColor,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Icon(Iconsax.finger_scan,
                                  color: Colors.white, size: 35),
                            ),
                            Container(
                              child: TextWidget(
                                text: 'البصمة',
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                        width: 165,
                        height: 110,
                        decoration: BoxDecoration(
                            color: AppColors.chooseCompanyCardColor,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                ],
              )),
          // Status Mark
          Positioned(
            top: 65,
            left: Dimentions.screenWidth / 1.8,
            child:
            CircleAvatar(backgroundColor: AppColors.chooseCompanyCardColor, radius: 9,),
          ),
          Positioned(
            top: 67,
            left: Dimentions.screenWidth / 1.78,
            child:
                CircleAvatar(backgroundColor: Colors.green, radius: 7,),
          ),
        ],
      ),
    );
  }
}