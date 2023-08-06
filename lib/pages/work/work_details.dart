import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:newdishticket/pages/work/user_details_data.dart';
import 'package:newdishticket/utilize/dimentions.dart';

import '../../utilize/app_colors.dart';
import '../../widgets/text_widget.dart';

class WorkDetails extends StatelessWidget {
  const WorkDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
        child: TextWidget(
          text: 'المهام',
          fontSize: 22,
        ),
      ),
        toolbarHeight: 110,backgroundColor: AppColors.chooseCompanyCardColor,
      ),
      backgroundColor: AppColors.mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // AppBar
            SizedBox(
              height: 10,
            ),
            // Work Status
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: AppColors.chooseCompanyCardColor,
                  borderRadius: BorderRadius.circular(12)),
              height: 210,
              child:
              Column(
                children: [
                  // Status and Date
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: TextWidget(
                            textColor: Colors.grey,
                            text: "2001/7/6 11:00 AM",
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: TextWidget(
                                  text: "قيد المراجعة",
                                ),
                                margin: EdgeInsets.only(right: 8),
                              ),
                              Container(
                                height: 27,
                                width: 27,
                                decoration: BoxDecoration(
                                    color: Colors.yellow.shade700,
                                    borderRadius:
                                        BorderRadius.circular(5)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Details
                  Container(
                    margin: EdgeInsets.only(top: 8, left: 20, right: 20),
                    height: 80,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                        margin: EdgeInsets.only(top: 3, right: 5),
                        child: TextWidget(
                            text: 'ضعف كبير في الخدمة وفصلات في الراوتر ',
                            textAlign: TextAlign.right)),
                  ),
                  // Address
                  Container(
                    height: 60,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.mainColor,
                    ),
                    margin: EdgeInsets.only(
                        right: 20, left: 20, top: 8, bottom: 10),
                    child: Container(
                        margin: EdgeInsets.all(5),
                        child: TextWidget(
                          text:
                              'بغداد - الكرادة - شارع الصناعة - مقابل الجامعة التكنولوجية',
                          textAlign: TextAlign.right,
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // User Details
            Container(
              color: AppColors.mainColor,
              height: 40,
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 15, top: 10, right: 15),
              child: TextWidget(
                  text: ':تفاصيل المشترك', textAlign: TextAlign.right,fontSize: 18,),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Container(
                    height: 90,
                    width: double.maxFinite,
                    color: AppColors.mainColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // User Number
                        UserDetailsData(
                            height: 90,
                            width: (Dimentions.screenWidth / 2) -
                                (Dimentions.screenWidth / 20),
                            titleText: ':رقم المشترك',
                            detailsText: "07730744860",
                            detailsColor: Colors.blue),
                        // User Name
                        UserDetailsData(
                            height: 90,
                            width: (Dimentions.screenWidth / 2) -
                                (Dimentions.screenWidth / 20),
                            titleText: ":اسم المشترك",
                            detailsText: 'حيدر خالد عبد الامير')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // UserName and Passcode
                  Container(
                    height: 90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Passcode
                        UserDetailsData(
                          height: 90,
                          width: (Dimentions.screenWidth / 2) -
                              (Dimentions.screenWidth / 20),
                          titleText: ':الرقم السري',
                          detailsText: 'haider1234',
                          detailsColor: Colors.blue,
                        ),
                        // UserName
                        UserDetailsData(
                          height: 90,
                          width: (Dimentions.screenWidth / 2) -
                              (Dimentions.screenWidth / 20),
                          titleText: ':اسم المستخدم',
                          detailsText: 'haider@62',
                          detailsColor: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Address and Ports
                  Container(
                    height: 90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Address
                        UserDetailsData(
                          height: 90,
                          width: (Dimentions.screenWidth / 2) -
                              (Dimentions.screenWidth / 20),
                          titleText: ':رقم التيل',
                          detailsText: '2556',
                        ),
                        // Port
                        UserDetailsData(
                          height: 90,
                          width: (Dimentions.screenWidth / 2) -
                              (Dimentions.screenWidth / 20),
                          titleText: ':المنفذ',
                          detailsText: '66982',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Notes
                  Container(
                    height: 110,
                    child: UserDetailsData(
                      bottomPadding: 25,
                      height: 90,
                      width: double.infinity,
                      topPadding: 0,
                      titleText: ':الملاحظات',
                      detailsText: 'لا يوجد',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            // Comments View
            Container(
              decoration: BoxDecoration(
                  color: AppColors.chooseCompanyCardColor,
                  borderRadius: BorderRadius.circular(10)),
              height: 70,
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Stack(
                      children: [
                        Positioned(
                          child: CircleAvatar(
                            backgroundColor: Colors.grey.shade700,
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
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    width: 130,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(text: 'اظهار التعليقات',fontSize: 16,),
                        Icon(
                          Iconsax.message_2,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Status
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
              decoration: BoxDecoration(
                  color: AppColors.chooseCompanyCardColor,
                  borderRadius: BorderRadius.circular(10)),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 125,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: TextWidget(
                      text: 'رفض المهمة',
                    )),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(10)),

                    child: Center(
                        child: TextWidget(
                      text: 'صرف المواد',
                    )),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: TextWidget(
                      text: 'تغيير الحالة',
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
