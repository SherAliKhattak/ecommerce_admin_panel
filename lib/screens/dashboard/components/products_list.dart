import 'package:ecommerce_admin_panel/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/products_model.dart';
import '../../../utils/themes.dart';

class ProductsList extends StatelessWidget {
  final List<ProductsModel>? list;
  final String? title;
  const ProductsList({super.key, this.list, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 16),
        ),
        Row(
          children: [
            Expanded(
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(paddingDefault(context)),
                  width: Get.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: kborderColor),
                      borderRadius: BorderRadius.circular(radius)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GridView.builder(
                          itemCount: list!.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 1.2),
                          itemBuilder: ((context, index) {
                            ProductsModel pd = list![index];
                            return Card(
                              child: Container(
                                padding:
                                    EdgeInsets.all(paddingExtraSmall(context)),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        paddingDefault(context))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(
                                                paddingDefault(context)),
                                            decoration: BoxDecoration(
                                                color: kwhiteColor,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        radius)),
                                            child: Image.asset(
                                              pd.image!,
                                              fit: BoxFit.cover,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      pd.name!,
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
