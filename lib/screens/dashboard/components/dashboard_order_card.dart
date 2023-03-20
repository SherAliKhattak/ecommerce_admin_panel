import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/style.dart';

class DashboardOrderCard extends StatelessWidget {
  final String? image;
  final IconData? icon;
  final String? title;
  final String? indicator;
  final String? textColor;
  final Color? backgroundColor;
  final Color? numberColor;
  const DashboardOrderCard(
      {super.key,
      this.image,
      this.icon,
      this.title,
      this.indicator,
      this.textColor,
      this.backgroundColor,
      this.numberColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(paddingDefault(context)),
        margin: EdgeInsets.only(right: paddingExtraSmall(context)),
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10)),
        height: Get.height * 0.3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  image!,
                  height: Get.height * 0.08,
                  width: 50,
                )),
            Text(
              '6',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: numberColor, fontSize: 16),
            ),
            Expanded(
              child: Text(
                title!,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
