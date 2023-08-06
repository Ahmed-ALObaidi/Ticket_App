import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utilize/app_colors.dart';
import '../../utilize/dimentions.dart';
import '../../widgets/text_widget.dart';

class UserDetailsData extends StatelessWidget {
  final double height;
  final double width;
  final String titleText;
  final String detailsText;
  final Color? titleColor;
  final Color? detailsColor;
  final double? titleFontSize;
  final double? detailsFontSize;
  final double? rightPadding;
  final double? leftPadding;
  final double? topPadding;
  final double? bottomPadding;

  const UserDetailsData(
      {Key? key,
      required this.height,
      required this.width,
      required this.titleText,
      required this.detailsText,
      this.titleColor = Colors.grey,
      this.detailsColor = Colors.white,
      this.titleFontSize = 16,
      this.detailsFontSize = 16, this.rightPadding = 10, this.leftPadding=0, this.topPadding=0, this.bottomPadding=0,


      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: rightPadding!,top: topPadding!,bottom: bottomPadding!,left: leftPadding!),
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: AppColors.chooseCompanyCardColor,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              text: titleText,
              fontSize: titleFontSize,
              textColor: titleColor,
            ),
            TextWidget(
              text: detailsText,
              fontSize: detailsFontSize,
              textColor: detailsColor,
            ),
          ],
        ));
  }
}
