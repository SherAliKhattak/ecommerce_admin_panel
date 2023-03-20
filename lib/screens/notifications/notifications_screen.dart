import 'package:ecommerce_admin_panel/components/custom_widgets/custom_textfield.dart';
import 'package:ecommerce_admin_panel/components/custom_widgets/drawer.dart';
import 'package:ecommerce_admin_panel/utils/style.dart';
import 'package:ecommerce_admin_panel/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PushNotifications extends StatefulWidget {
  const PushNotifications({super.key});

  @override
  State<PushNotifications> createState() => _PushNotificationsState();
}

class _PushNotificationsState extends State<PushNotifications> {
  @override
  Widget build(BuildContext context) {
    return AdminPanel(
      body: Padding(
        padding: EdgeInsets.all(paddingLarge(context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.notifications_active),
                SizedBox(
                  width: Get.width * 0.01,
                ),
                Text(
                  'Notifications',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: kblackColor),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              padding: EdgeInsets.all(paddingDefault(context)),
              decoration:
                  BoxDecoration(border: Border.all(color: kborderColor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Title',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 15),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      CustomTextField(
                        width: Get.width * 0.3,
                        borderRadius: 10,
                        hintText: 'New Notification',
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Text(
                        'Description',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 15),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      CustomTextField(
                        borderRadius: 10,
                        width: Get.width * 0.3,
                        hintText: 'Description',
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Image',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: kblackColor, fontWeight: fontWeightNormal),
                      ),
                      Container(
                          padding: EdgeInsets.all(paddingLarge(context)),
                          width: Get.width * 0.25,
                          decoration: const BoxDecoration(color: klightgreen),
                          child: const Icon(
                            Icons.photo,
                            color: kgreenAccent,
                            size: 50,
                          )),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      CustomTextField(
                        width: Get.width * 0.25,
                        borderRadius: 10,
                        prefixIcon: TextButton(
                            onPressed: (() {}),
                            child: Text(
                              'Choose File',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: kblackColor,
                                      fontSize: 15,
                                      fontWeight: fontWeightNormal),
                            )),
                        hintText: 'No File Chosen',
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(radius)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Notifications List',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: kblackColor),
                      ),
                      SizedBox(
                        width: Get.width * 0.005,
                      ),
                      Container(
                          height: 30,
                          padding: EdgeInsets.all(paddingExtraSmall(context)),
                          decoration:
                              const BoxDecoration(color: kgreycontainer),
                          child: Text(
                            '9',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: kblackColor, fontSize: 14),
                          ))
                    ],
                  ),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
