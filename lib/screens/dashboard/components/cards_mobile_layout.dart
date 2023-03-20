import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/images/images.dart';
import '../../../utils/themes.dart';
import 'dashboard_order_card.dart';

class CardsMobileLayout extends StatelessWidget {
  const CardsMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            DashboardOrderCard(
              image: Images.box,
              backgroundColor: klightblue,
              numberColor: kblueColor,
              title: 'Pending',
            ),
          ],
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        Row(
          children: const [
            DashboardOrderCard(
              image: Images.bag,
              backgroundColor: klightorange,
              numberColor: korangeColor,
              title: 'Confirmed',
            ),
          ],
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        Row(
          children: const [
            DashboardOrderCard(
              title: 'Completed',
              numberColor: kgreenColor,
              image: Images.completed,
              backgroundColor: klightgreen,
            ),
          ],
        ),
      ],
    );
  }
}
