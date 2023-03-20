import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/themes.dart';

class PrimaryButon extends StatelessWidget {
  final double? paddingValue;
  final double? width;
  final Color? textColor;
  final String title;
  final Color? backgroundColor;
  final BoxBorder? boxborder;
  final Function()? onPressed;
  final EdgeInsetsGeometry? margin;
  final double? height;
  const PrimaryButon(
      {Key? key,
      required this.title,
      this.onPressed,
      this.margin,
      this.backgroundColor = kprimary,
      this.textColor = Colors.white,
      this.boxborder,
      this.height,
      this.width,
      this.paddingValue = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(border: boxborder),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.all(paddingValue!)),
          onPressed: onPressed,
          child: Text(
            title,
            style: TextStyle(color: textColor),
          )),
    );
  }
}
