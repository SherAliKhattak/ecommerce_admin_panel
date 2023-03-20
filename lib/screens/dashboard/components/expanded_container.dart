import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/style.dart';
import '../../../utils/themes.dart';

class ExpandedContainer extends StatelessWidget {
  const ExpandedContainer({super.key, this.imagePath, this.title, this.number});
  final String? imagePath;
  final String? title;
  final String? number;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(right: 5),
        height: Get.height * 0.08,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: kgreycontainer,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              imagePath!,
              height: 30,
              width: 30,
            ),
            SizedBox(
              width: Get.width * 0.01,
            ),
            Flexible(
              child: AutoSizeText(
                title!,
                maxFontSize: 15,
                minFontSize: 8,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(),
              ),
            ),
            const Spacer(),
            Text(
              number!,
              style: const TextStyle(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
