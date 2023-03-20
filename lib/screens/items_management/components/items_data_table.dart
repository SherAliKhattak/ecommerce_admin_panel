import 'package:ecommerce_admin_panel/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/style.dart';
import '../../../utils/themes.dart';

class Items extends DataTableSource {
  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => items.length;

  @override
  int get selectedRowCount => 0;

  @override
  DataRow? getRow(int index) {
    final item = items[index];
    return DataRow(cells: [
      DataCell(Text(
        '${index + 1}',
        style: Theme.of(Get.context!).textTheme.bodySmall!.copyWith(
              color: Colors.black,
            ),
      )),
      DataCell(
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(paddingLarge(Get.context!)),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        item.image!,
                      ))),
            ),
            SizedBox(
              width: Get.width * 0.02,
            ),
            Text(item.name!,
                style: Theme.of(Get.context!).textTheme.bodySmall!.copyWith(
                      color: Colors.black,
                    )),
          ],
        ),
      ),
      DataCell(
        Text(item.category!.title!,
            style: Theme.of(Get.context!).textTheme.bodySmall!.copyWith(
                  color: Colors.black,
                )),
      ),
      DataCell(
        Text(item.price!,
            style: Theme.of(Get.context!).textTheme.bodySmall!.copyWith(
                  color: Colors.black,
                )),
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
