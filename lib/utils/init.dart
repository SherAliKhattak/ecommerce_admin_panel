import 'package:ecommerce_admin_panel/data/categories_controller.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<CategoriesController>(CategoriesController());
  }
}
