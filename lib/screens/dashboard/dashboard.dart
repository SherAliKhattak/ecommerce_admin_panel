import 'package:ecommerce_admin_panel/components/custom_widgets/drawer.dart';
import 'package:ecommerce_admin_panel/components/custom_widgets/responsive_layout.dart';
import 'package:ecommerce_admin_panel/screens/dashboard/components/cards_mobile_layout.dart';
import 'package:ecommerce_admin_panel/screens/dashboard/components/dashboard_order_card.dart';
import 'package:ecommerce_admin_panel/screens/dashboard/components/expanded_container.dart';
import 'package:ecommerce_admin_panel/screens/dashboard/components/products_list.dart';
import 'package:ecommerce_admin_panel/utils/constants.dart';
import 'package:ecommerce_admin_panel/utils/style.dart';
import 'package:ecommerce_admin_panel/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/images/images.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return AdminPanel(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Sher',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 16)),
              Text('here you can manage your orders ',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 16,
                      color: Theme.of(context).hintColor,
                      fontWeight: fontWeightNormal)),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(paddingExtraSmall(context)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: kborderColor)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Orders',
                      textAlign: TextAlign.start,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    responsiveVisibility(
                            context: context, phone: false, tablet: false)
                        ? displaycardsHorizontally()
                        : const CardsMobileLayout(),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    if (responsiveVisibility(
                        context: context, phone: false, tablet: false))
                      expandedContainerWebLayout()
                    else
                      expandedContainerMobileLayout(),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Row(
                children: [
                  Expanded(
                      child: ProductsList(
                          title: 'Popular Items', list: topsellingItems)),
                  const SizedBox(
                    width: 10,
                  ),
                  responsiveVisibility(
                          context: context,
                          desktop: true,
                          laptop: true,
                          tabletLandscape: true,
                          phone: false,
                          tablet: false)
                      ? Expanded(
                          child: ProductsList(
                              title: 'Top Selling Items',
                              list: topsellingItems))
                      : const SizedBox(),
                ],
              ),
              responsiveVisibility(
                      context: context,
                      desktop: false,
                      laptop: false,
                      tabletLandscape: false,
                      phone: true,
                      tablet: true)
                  ? Row(
                      children: [
                        Expanded(
                            child: ProductsList(
                                title: 'Top Selling Items',
                                list: topsellingItems)),
                      ],
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }

  Row expandedContainerWebLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ExpandedContainer(imagePath: Images.bag, title: 'Shipped', number: '6'),
        ExpandedContainer(
            imagePath: Images.cancel, title: 'Cancelled', number: '2'),
        ExpandedContainer(
            imagePath: Images.completed, title: 'Users', number: '10'),
      ],
    );
  }

  expandedContainerMobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            ExpandedContainer(
                imagePath: Images.bag, title: 'Shipped', number: '6'),
          ],
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        Row(
          children: const [
            ExpandedContainer(
                imagePath: Images.cancel, title: 'Cancelled', number: '2'),
          ],
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        Row(
          children: const [
            ExpandedContainer(
                imagePath: Images.completed, title: 'Users', number: '10'),
          ],
        ),
      ],
    );
  }

  Row displaycardsHorizontally() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        DashboardOrderCard(
          image: Images.box,
          backgroundColor: klightblue,
          numberColor: kblueColor,
          title: 'Pending',
        ),
        DashboardOrderCard(
          image: Images.bag,
          backgroundColor: klightorange,
          numberColor: korangeColor,
          title: 'Confirmed',
        ),
        DashboardOrderCard(
          title: 'Completed',
          numberColor: kgreenColor,
          image: Images.completed,
          backgroundColor: klightgreen,
        ),
      ],
    );
  }
}
