import 'package:ecommerce_admin_panel/components/custom_widgets/custom_textfield.dart';
import 'package:ecommerce_admin_panel/components/custom_widgets/drawer.dart';
import 'package:ecommerce_admin_panel/components/custom_widgets/primary_button.dart';
import 'package:ecommerce_admin_panel/components/custom_widgets/responsive_layout.dart';
import 'package:ecommerce_admin_panel/models/categories_model.dart';
import 'package:ecommerce_admin_panel/screens/items_management/components/items_info.dart';
import 'package:ecommerce_admin_panel/utils/style.dart';
import 'package:ecommerce_admin_panel/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/item_image_container.dart';
import 'components/items_data_table.dart';

class ItemsManagement extends StatefulWidget {
  const ItemsManagement({super.key});

  @override
  State<ItemsManagement> createState() => _ItemsManagementState();
}

class _ItemsManagementState extends State<ItemsManagement> {
  CategoriesModel? dropdownValue;
  final DataTableSource myItems = Items();

  @override
  Widget build(BuildContext context) {
    return AdminPanel(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0).copyWith(top: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const ItemInfo(),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  responsiveVisibility(
                          context: context, phone: false, tablet: false)
                      ? const ItemImageContainer()
                      : const SizedBox(),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                ],
              ),
              if (responsiveVisibility(
                  context: context,
                  desktop: false,
                  tabletLandscape: false,
                  laptop: false))
                Row(
                  children: const [
                    ItemImageContainer(),
                  ],
                )
              else
                const SizedBox(),
              SizedBox(
                height: Get.height * 0.02,
              ),
              itemDetailsContainer(context),
              SizedBox(
                height: Get.height * 0.02,
              ),
              PaginatedDataTable(columns: const [
                DataColumn(label: Text('SL')),
                DataColumn(label: Text(' Name')),
                DataColumn(label: Text('Category Name')),
                DataColumn(label: Text('Price')),
                DataColumn(
                  label: Text('actions'),
                ),
              ], source: myItems)
            ],
          ),
        ),
      ),
    );
  }

  Container itemDetailsContainer(BuildContext context) {
    return Container(
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
                'Item Details',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: kblackColor, fontWeight: fontWeightSemiBold),
              ),
            ],
          ),
          const Divider(
            color: kborderColor,
          ),
          Text(
            'Choose Category',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: kblackColor, fontWeight: fontWeightNormal),
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(border: Border.all(color: kborderColor)),
            width: responsiveVisibility(
              context: context,
              desktop: false,
              laptop: false,
              tabletLandscape: false,
            )
                ? Get.width * 0.5
                : Get.width * 0.2,
            child: DropdownButton<CategoriesModel>(
              dropdownColor: Theme.of(context).cardColor,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: kblackColor),
              iconSize: 30,
              iconDisabledColor: kblackColor,
              iconEnabledColor: kblackColor,
              value: dropdownValue,
              isDense: true,
              underline: const SizedBox(),
              isExpanded: true,
              items: categories.map((buildmenuItem)).toList(),
              onChanged: (newvalue) {
                setState(() {
                  dropdownValue = newvalue!;
                });
              },
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Text('Description',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: kblackColor, fontWeight: fontWeightNormal)),
          SizedBox(
            height: Get.height * 0.02,
          ),
          CustomTextField(
            width: responsiveVisibility(
              context: context,
              desktop: false,
              laptop: false,
              tabletLandscape: false,
            )
                ? Get.width * 0.5
                : Get.width * 0.2,
            suffixIconData: Icons.monetization_on_outlined,
            borderRadius: 10,
            hintText: 'Price',
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Text('Total Stock',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: kblackColor, fontWeight: fontWeightNormal)),
          SizedBox(
            height: Get.height * 0.02,
          ),
          /** 
           * ! this method is deprecated
          */

          CustomTextField(
            width: responsiveVisibility(
              context: context,
              desktop: false,
              laptop: false,
              tabletLandscape: false,
            )
                ? Get.width * 0.5
                : Get.width * 0.2,
            borderRadius: 10,
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          PrimaryButon(
            height: Get.height * 0.08,
            width: responsiveVisibility(
              context: context,
              desktop: false,
              laptop: false,
              tabletLandscape: false,
            )
                ? Get.width * 0.5
                : Get.width * 0.2,
            title: 'Add Category',
            onPressed: (() {}),
          ),
        ],
      ),
    );
  }

  DropdownMenuItem<CategoriesModel> buildmenuItem(
    CategoriesModel items,
  ) =>
      DropdownMenuItem(
        value: items,
        child: Text(
          items.title!,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: kblackColor, fontSize: 14),
        ),
      );
}
