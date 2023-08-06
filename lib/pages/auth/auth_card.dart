import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newdishticket/widgets/text_widget.dart';

class AuthCard extends StatelessWidget {
  final TextInputType textInputType;
  final IconData prefixIcon;
  final Color? iconColor;
  final String text;
  final double? fontSize;
  final double? hintFontSize;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? hintColor;
  final FontWeight? fontWeight;
  final FontWeight? hintFontWeight;
  final double? radius;

  const AuthCard(
      {Key? key,
      required this.textInputType,
      required this.prefixIcon,
      this.iconColor,
      required this.text,
      this.fontSize = 24,
      this.backgroundColor,
      this.textColor = Colors.white,
      this.fontWeight,
      this.hintFontSize,
      this.hintColor,
      this.hintFontWeight,
      this.radius = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        color: backgroundColor,
      ),
      child: TextField(
          keyboardType: textInputType,
          style: TextStyle(
            color: textColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
          decoration: InputDecoration(
              hintTextDirection: TextDirection.rtl,
              prefixIcon: Icon(prefixIcon),
              contentPadding: EdgeInsets.fromLTRB(10, 8, 10, 15),
              prefixIconColor: iconColor,
              hintText: text,
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.zero, borderSide: BorderSide.none),
              hintStyle: TextStyle(
                fontSize: hintFontSize,
                fontWeight: hintFontWeight,
                color: hintColor,
              ))),
    );
  }
}
