import 'package:ecommerce_admin_panel/models/categories_model.dart';

class ProductsModel {
  String? image;
  String? name;
  String? price;
  String? brand;
  bool? onDiscount;
  String? productDetails;
  String? reviews;
  String? numberofReviews;
  CategoriesModel? category;
  List<String>? images;

  ProductsModel(
      {this.image,
      this.category,
      this.images,
      this.name,
      this.price,
      this.brand,
      this.onDiscount,
      this.productDetails,
      this.reviews,
      this.numberofReviews});
}
