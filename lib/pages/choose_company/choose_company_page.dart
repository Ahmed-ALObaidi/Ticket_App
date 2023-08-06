import 'package:flutter/material.dart';
import 'package:newdishticket/utilize/app_colors.dart';
import 'package:newdishticket/utilize/dimentions.dart';
import 'package:newdishticket/widgets/text_widget.dart';

class ChooseCompanyPage extends StatelessWidget {
  const ChooseCompanyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: Dimentions.screenHeight * 0.09, bottom: 15),
              width: double.maxFinite,
              child: const Center(
                  child: TextWidget(
                    text: 'اختر الشركة',
                    fontSize: 26,
                    textColor: Colors.white,
                  )),
            ),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                        decoration: BoxDecoration(
                            color: AppColors.chooseCompanyCardColor,
                            borderRadius: BorderRadius.circular(10)),
                        margin:
                        EdgeInsets.only(bottom: 10, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextWidget(
                              text: 'شركة شمس المعرفة',
                              textColor: Colors.white,
                              fontSize: 22,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColors.mainColor,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 70,
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                'assets/images/company-logo1.png',
                              ),
                            ),
                          ],
                        ));
                  },
                  itemCount: 20),
            ),
            Container(
              width: double.maxFinite,
              height: 85,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(5)),
                margin: EdgeInsets.symmetric(horizontal: 145, vertical: 20),
                child: Center(
                    child: InkWell(
                      child: Text('التالي ',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
