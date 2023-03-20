import 'package:ecommerce_admin_panel/components/custom_widgets/custom_textfield.dart';
import 'package:ecommerce_admin_panel/components/custom_widgets/drawer.dart';
import 'package:ecommerce_admin_panel/components/custom_widgets/primary_button.dart';
import 'package:ecommerce_admin_panel/components/custom_widgets/responsive_layout.dart';
import 'package:ecommerce_admin_panel/data/categories_controller.dart';
import 'package:ecommerce_admin_panel/models/categories_model.dart';
import 'package:ecommerce_admin_panel/utils/style.dart';
import 'package:ecommerce_admin_panel/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesManagement extends StatelessWidget {
  const CategoriesManagement({super.key});

  @override
  Widget build(BuildContext context) {
    final DataTableSource myData = CategoriesData();

    return AdminPanel(
      body: Padding(
        padding: EdgeInsets.all(paddingDefault(context)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(paddingExtraLarge(context)),
                      decoration: BoxDecoration(
                          border: Border.all(color: kgreycontainer)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Add Categories',
                            style: TextStyle(fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Name',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          SizedBox(height: Get.height * 0.02),
                          CustomTextField(
                            width: responsiveVisibility(
                                    context: context, phone: false)
                                ? Get.width * 0.2
                                : Get.width,
                            borderRadius: 10,
                            hintText: 'Name',
                            prefixIcon: const Icon(Icons.category),
                          ),
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          GetBuilder<CategoriesController>(builder: (contr) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(radius),
                                      color: kgreenAccent,
                                    ),
                                    child: contr.pickedImage != null
                                        ? Image.memory(
                                            contr.fileName!,
                                            fit: BoxFit.fill,
                                            height: Get.height * 0.1,
                                            width: responsiveVisibility(
                                                    context: context,
                                                    phone: false)
                                                ? Get.width * 0.05
                                                : Get.width * 0.2,
                                          )
                                        : const Icon(
                                            Icons.photo_outlined,
                                            size: 50,
                                          )),
                              ],
                            );
                          }),
                          const SizedBox(
                            height: 20,
                          ),
                          GetBuilder<CategoriesController>(builder: (contr) {
                            return CustomTextField(
                              borderRadius: 10,
                              width: responsiveVisibility(
                                      context: context, phone: false)
                                  ? Get.width * 0.2
                                  : Get.width,
                              hintText: contr.pickedImage != null
                                  ? contr.pickedImage!.path
                                  : 'Choose A file',
                              prefixIcon: SizedBox(
                                width: Get.width * 0.08,
                                child: IconButton(
                                    onPressed: (() {
                                      CategoriesController.i.imagePicker();
                                    }),
                                    icon:
                                        const Icon(Icons.attach_file_outlined)),
                              ),
                            );
                          }),
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          PrimaryButon(
                            height: Get.height * 0.07,
                            width: responsiveVisibility(
                                    context: context, phone: false)
                                ? Get.width * 0.2
                                : Get.width,
                            title: 'Add Categoty',
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              PaginatedDataTable(
                  rowsPerPage: 6,
                  checkboxHorizontalMargin: 100,
                  horizontalMargin: 300,
                  columnSpacing: 100,
                  header: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.group,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Categories,',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  columns: const [
                    DataColumn(label: Text('SL')),
                    DataColumn(label: Text('Category Name')),
                    DataColumn(
                      label: Text('actions'),
                    ),
                  ],
                  source: myData),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesData extends DataTableSource {
  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => categories.length;

  @override
  int get selectedRowCount => 0;

  @override
  DataRow? getRow(int index) {
    final category = categories[index];
    return DataRow(cells: [
      DataCell(Text(
        '${index + 1}',
        style: Theme.of(Get.context!).textTheme.bodySmall!.copyWith(
              color: Colors.black,
            ),
      )),
      DataCell(
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              category.image!,
              width: Get.width * 0.06,
            ),
            Text(category.title!,
                style: Theme.of(Get.context!).textTheme.bodySmall!.copyWith(
                      color: Colors.black,
                    )),
          ],
        ),
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
