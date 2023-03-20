import 'package:ecommerce_admin_panel/components/custom_widgets/drawer.dart';
import 'package:ecommerce_admin_panel/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/user_model.dart';

class CustomerDetails extends StatelessWidget {
  CustomerDetails({super.key});

  final DataTableSource myData = CustomersData();

  @override
  Widget build(BuildContext context) {
    return AdminPanel(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Customer ID # 5',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontSize: 20, color: kblackColor),
            ),
            Row(
              children: [
                const Icon(Icons.calendar_month_sharp),
                SizedBox(
                  width: Get.width * 0.005,
                ),
                Text(
                  'Joined At : 03 February 2023 08:43 pm',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            PaginatedDataTable(columns: const [], source: source)
          ],
        ),
      ),
    );
  }
}

class CustomersData extends DataTableSource {
  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => users.length;

  @override
  int get selectedRowCount => 0;

  @override
  DataRow? getRow(int index) {
    final user = users[index];
    return DataRow(cells: [
      DataCell(Text(
        user.uid!,
        style: Theme.of(Get.context!).textTheme.bodySmall!.copyWith(
              color: Colors.black,
            ),
      )),
      DataCell(
        Text(user.name!,
            style: Theme.of(Get.context!).textTheme.bodySmall!.copyWith(
                  color: Colors.black,
                )),
      ),
      DataCell(Text(user.email!,
          style: Theme.of(Get.context!).textTheme.bodySmall!.copyWith(
                color: Colors.black,
              ))),
      DataCell(Text(user.orders!,
          style: Theme.of(Get.context!).textTheme.bodySmall!.copyWith(
                color: Colors.black,
              ))),
      DataCell(Row(
        children: [
          const Icon(
            Icons.delete,
            color: kredColor,
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: (() {}),
            icon: const Icon(
              Icons.visibility,
              color: kblueColor,
            ),
          )
        ],
      ))
    ]);
  }
}
