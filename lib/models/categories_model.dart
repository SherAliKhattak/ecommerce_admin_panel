import '../components/images/images.dart';

class CategoriesModel {
  String? image;
  String? title;

  CategoriesModel({this.image, this.title});
}

List<CategoriesModel> categories = [
  CategoriesModel(image: Images.menShirts, title: 'Men Shirt'),
  CategoriesModel(image: Images.menPants, title: 'Men Pants'),
  CategoriesModel(image: Images.menShoes, title: 'Men Shoes'),
  CategoriesModel(image: Images.womenDress, title: 'Woman Dress'),
  CategoriesModel(image: Images.womenShoes, title: 'Woman Shoes'),
  CategoriesModel(image: Images.babyShoes, title: 'Baby Shoes'),
  CategoriesModel(image: Images.babyClothes, title: 'Baby Clothes'),
];
