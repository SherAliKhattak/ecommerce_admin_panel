import 'package:ecommerce_admin_panel/components/custom_widgets/drawer.dart';
import 'package:ecommerce_admin_panel/models/user_model.dart';
import 'package:ecommerce_admin_panel/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helper/route_helper.dart';

class CustomerManagementScreen extends StatefulWidget {
  const CustomerManagementScreen({super.key});

  @override
  State<CustomerManagementScreen> createState() =>
      _CustomerManagementScreenState();
}

class _CustomerManagementScreenState extends State<CustomerManagementScreen> {
  TextEditingController search = TextEditingController();
  final DataTableSource myData = CustomersData();

  @override
  Widget build(BuildContext context) {
    return AdminPanel(
      body: SingleChildScrollView(
        child: PaginatedDataTable(
            rowsPerPage: 6,
            horizontalMargin: 50,
            columnSpacing: 100,
            header: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.group,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Customers')
              ],
            ),
            columns: const [
              DataColumn(label: Text('SL')),
              DataColumn(label: Text('Name')),
              DataColumn(
                label: Text('email'),
              ),
              DataColumn(
                label: Text('orders'),
              ),
              DataColumn(
                label: Text('actions'),
              ),
            ],
            source: myData),
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
            onPressed: (() {
              Get.toNamed(Routes.customerDetails);
            }),
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
