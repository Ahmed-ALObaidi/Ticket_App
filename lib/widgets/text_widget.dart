import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextOverflow? textOverflow;
  final TextAlign? textAlign;

  const TextWidget({
    Key? key,
    required this.text,
    this.textColor = Colors.white,
    this.fontSize,
    this.backgroundColor,
    this.fontWeight,
    this.textOverflow,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      textAlign: textAlign,
      style: TextStyle(fontFamily: 'Cairo',
          color: textColor,
          backgroundColor: backgroundColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
          overflow: textOverflow),
    );
  }
}
