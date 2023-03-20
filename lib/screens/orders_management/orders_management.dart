import 'package:ecommerce_admin_panel/components/custom_widgets/custom_textfield.dart';
import 'package:ecommerce_admin_panel/components/custom_widgets/drawer.dart';
import 'package:ecommerce_admin_panel/utils/constants.dart';
import 'package:ecommerce_admin_panel/utils/order_utils/order_utils.dart';
import 'package:ecommerce_admin_panel/utils/style.dart';
import 'package:ecommerce_admin_panel/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersManagemet extends StatefulWidget {
  const OrdersManagemet({super.key});

  @override
  State<OrdersManagemet> createState() => _OrdersManagemetState();
}

class _OrdersManagemetState extends State<OrdersManagemet> {
  @override
  Widget build(BuildContext context) {
    final DataTableSource orders = Orders();

    return AdminPanel(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'All Orders',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: kblackColor),
                  ),
                  SizedBox(
                    width: Get.width * 0.005,
                  ),
                  widgetContainer(
                      context,
                      Text(
                        '9',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 14),
                      ),
                      kdarkgrey,
                      EdgeInsets.symmetric(
                          horizontal: paddingExtraSmall(context))),
                ],
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Container(
                padding: EdgeInsets.all(paddingSmall(context)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(radius),
                    border: Border.all(color: kdarkgrey)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Expanded(
                          child: CustomTextField(
                            suffixIconData: Icons.search,
                            borderRadius: radius,
                            hintText: 'Search by order ID',
                          ),
                        ),
                        SizedBox(
                          width: Get.width * 0.02,
                        ),
                        widgetContainer(context, const Icon(Icons.menu),
                            kwhiteColor, EdgeInsets.all(paddingSmall(context)))
                      ],
                    ),
                    const Divider(),
                    PaginatedDataTable(
                        rowsPerPage: 6,
                        checkboxHorizontalMargin: 20,
                        horizontalMargin: 70,
                        columnSpacing: 70,
                        header: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.group,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: Get.height * 0.01,
                            ),
                            Text(
                              'Orders',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontSize: 20),
                            ),
                          ],
                        ),
                        columns: const [
                          DataColumn(label: Text('ID')),
                          DataColumn(label: Text('Date Placed')),
                          DataColumn(
                            label: Text('Name'),
                          ),
                          DataColumn(
                            label: Text('Total amount'),
                          ),
                          DataColumn(
                            label: Text('status'),
                          ),
                          DataColumn(
                            label: Text('actions'),
                          ),
                        ],
                        source: orders),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget widgetContainer(BuildContext context, Widget widget, Color color,
      EdgeInsetsGeometry padding) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(color: kdarkgrey),
          borderRadius: BorderRadius.circular(radius)),
      child: widget,
    );
  }
}

class Orders extends DataTableSource {
  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => orders.length;

  @override
  int get selectedRowCount => 0;

  @override
  DataRow? getRow(int index) {
    final order = orders[index];
    return DataRow(cells: [
      DataCell(Text(
        order.id!,
        style: Theme.of(Get.context!).textTheme.bodySmall!.copyWith(
              color: Theme.of(Get.context!).primaryColor,
            ),
      )),
      DataCell(
        Text(order.datePlaced.toString(),
            style: Theme.of(Get.context!)
                .textTheme
                .bodySmall!
                .copyWith(color: kblackColor, fontWeight: fontWeightNormal)),
      ),
      DataCell(
        Text(order.customers!.name!,
            style: Theme.of(Get.context!)
                .textTheme
                .bodySmall!
                .copyWith(color: kblackColor, fontWeight: fontWeightNormal)),
      ),
      DataCell(
        Text(order.totalAmount.toString(),
            style: Theme.of(Get.context!)
                .textTheme
                .bodySmall!
                .copyWith(color: kblackColor, fontWeight: fontWeightNormal)),
      ),
      DataCell(
        Text(OrderUtils().orderStatus(order.orderStatus!),
            style: Theme.of(Get.context!)
                .textTheme
                .bodySmall!
                .copyWith(color: kblackColor, fontWeight: fontWeightNormal)),
      ),
      DataCell(Row(
        children: [
          const Icon(
            Icons.delete,
            color: kredColor,
          ),
          const SizedBox(
            width: 10,
          ),
          Icon(
            Icons.edit,
            color: Theme.of(Get.context!).hintColor,
          ),
        ],
      ))
    ]);
  }
}
