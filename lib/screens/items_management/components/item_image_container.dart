import 'package:ecommerce_admin_panel/data/categories_controller.dart';
import 'package:ecommerce_admin_panel/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/custom_widgets/custom_textfield.dart';
import '../../../utils/themes.dart';

class ItemImageContainer extends StatelessWidget {
  const ItemImageContainer({
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
                const Icon(Icons.landscape),
                SizedBox(
                  width: Get.width * 0.01,
                ),
                Text(
                  'Item Image',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: kblackColor, fontSize: 15),
                ),
              ],
            ),
            const Divider(
              color: kborderColor,
            ),
            Text(
              'image',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: kblackColor, fontWeight: fontWeightNormal),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              padding: EdgeInsets.all(paddingSmall(context)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius),
                color: const Color(0xFFE7F6EF),
              ),
              child: Icon(
                Icons.add_photo_alternate_rounded,
                color: kgreenColor,
                size: Get.height * 0.1,
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            CustomTextField(
              borderRadius: 10,
              hintText: 'No File Chosen',
              prefixIcon: TextButton(
                  style: ButtonStyle(
                    textStyle: MaterialStateProperty.all<TextStyle>(
                      Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: kblackColor),
                    ),
                  ),
                  onPressed: (() {
                    CategoriesController.i.imagePicker();
                  }),
                  child: Text(
                    'Choose File',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: kblackColor),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
