import 'package:ecommerce_admin_panel/components/custom_widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/style.dart';
import '../../../utils/themes.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: EdgeInsets.all(paddingDefault(context)),
        decoration: BoxDecoration(
            border: Border.all(color: kborderColor),
            borderRadius: BorderRadius.circular(radius)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.dashboard_outlined),
                SizedBox(
                  width: Get.width * 0.01,
                ),
                Text(
                  'Items Info',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: kblackColor, fontWeight: fontWeightSemiBold),
                ),
              ],
            ),
            const Divider(
              color: kborderColor,
            ),
            Text(
              'Name',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: kblackColor, fontWeight: fontWeightNormal),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            const CustomTextField(
              borderRadius: 10,
              hintText: 'New Item',
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Text('Description',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: kblackColor, fontWeight: fontWeightNormal)),
            SizedBox(
              height: Get.height * 0.03,
            ),
            const CustomTextField(
              borderRadius: 10,
              hintText: 'Short Description',
            ),
          ],
        ),
      ),
    );
  }
}
