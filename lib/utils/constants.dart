import 'dart:io';
import 'package:ecommerce_admin_panel/components/images/images.dart';
import 'package:ecommerce_admin_panel/models/categories_model.dart';
import 'package:flutter/foundation.dart';

import '../components/custom_widgets/enums.dart';
import '../models/orders_model.dart';
import '../models/products_model.dart';
import '../models/user_model.dart';

const String appname = 'Ecommerce App';
DateTime get getCurrentTimestamp => DateTime.now();
bool get isAndroid => !kIsWeb && Platform.isAndroid;
bool get isiOS => !kIsWeb && Platform.isIOS;
bool get isWeb => kIsWeb;
const kMobileWidthCutoff = 479.0;

List<ProductsModel> topsellingItems = [
  ProductsModel(
    image: Images.childrenDress,
    name: 'Children Dress',
  ),
  ProductsModel(
    image: Images.babyClothes,
    name: 'Baby Clothes',
  ),
  ProductsModel(
    image: Images.babyShoes,
    name: 'Baby Shoes',
  ),
  ProductsModel(
    image: Images.womenShoes,
    name: 'Woman Dress',
  ),
  ProductsModel(
    image: Images.womenShoes,
    name: 'Woman Shoes',
  ),
  ProductsModel(
    image: Images.menPants,
    name: 'Men Pants',
  ),
];

List<ProductsModel> items = [
  ProductsModel(
    category: CategoriesModel(title: 'Children Items'),
    price: '200',
    image: Images.childrenDress,
    name: 'Children Dress',
  ),
  ProductsModel(
    category: CategoriesModel(title: 'Children Items'),
    price: '100',
    image: Images.babyClothes,
    name: 'Baby Clothes',
  ),
  ProductsModel(
    category: CategoriesModel(title: 'Children Items'),
    price: '300',
    image: Images.babyShoes,
    name: 'Baby Shoes',
  ),
  ProductsModel(
    category: CategoriesModel(title: 'Woman Items'),
    price: '150',
    image: Images.womenShoes,
    name: 'Woman Dress',
  ),
  ProductsModel(
    category: CategoriesModel(title: 'Woman Items'),
    price: '350',
    image: Images.womenShoes,
    name: 'Woman Shoes',
  ),
  ProductsModel(
    category: CategoriesModel(title: 'Men Items'),
    price: '265',
    image: Images.menPants,
    name: 'Men Pants',
  ),
  ProductsModel(
    category: CategoriesModel(title: 'Men Items'),
    price: '265',
    image: Images.menPants,
    name: 'Men Pants',
  ),
  ProductsModel(
    category: CategoriesModel(title: 'Men Items'),
    price: '265',
    image: Images.menPants,
    name: 'Men Pants',
  ),
];

List<OrdersModel> orders = [
  OrdersModel(
      id: '100013',
      customers: UserModel(
          name: 'SherAli ktk',
          phoneNumber: '03329525215',
          image: Images.google,
          email: 'new12345@gmail.com'),
      totalAmount: 3000,
      orderStatus: OrderStatus.pending,
      products: [
        ProductsModel(
          image: Images.babyClothes,
          name: 'Baby Clothes',
          brand: 'Lipsy London',
          onDiscount: true,
          price: '500',
          productDetails: 'Summer wear',
        ),
        ProductsModel(
          image: Images.shoesproduct2,
          name: 'Baby shoes',
          brand: 'Lipsy London',
          onDiscount: true,
          price: '500',
          productDetails: 'Summer wear',
        )
      ],
      dateDelivered: DateTime.now(),
      datePlaced: DateTime(2023, 12, 4, 6, 13, 30),
      dateShipped: DateTime.now()),
  OrdersModel(
      id: '100012',
      customers: UserModel(
          name: 'Demo User',
          phoneNumber: '03359305593',
          image: Images.google,
          email: 'skhattak30@gmail.com'),
      totalAmount: 3000,
      orderStatus: OrderStatus.confirmed,
      products: [
        ProductsModel(
          image: Images.babyShoes,
          name: 'Baby Clothes',
          brand: 'Lipsy London',
          onDiscount: true,
          price: '200',
          productDetails: 'Summer wear',
        ),
        ProductsModel(
          image: Images.babyClothes,
          name: 'Baby Clothes',
          brand: 'Lipsy London',
          onDiscount: true,
          price: '100',
          productDetails: 'Summer wear',
        ),
      ],
      dateDelivered: DateTime.now(),
      datePlaced: DateTime(2023, 12, 4, 6, 13, 30),
      dateShipped: DateTime.now()),
  OrdersModel(
      id: '1000133',
      customers: UserModel(
          name: 'newUser',
          phoneNumber: '2123123',
          image: Images.google,
          email: 'newemail@gmail.com'),
      totalAmount: 1200,
      orderStatus: OrderStatus.pending,
      products: [
        ProductsModel(
          image: Images.babyClothes,
          name: 'Baby Clothes',
          brand: 'Lipsy London',
          onDiscount: true,
          price: '500',
          productDetails: 'Summer wear',
        ),
        ProductsModel(
          image: Images.babyClothes,
          name: 'Baby Clothes',
          brand: 'Lipsy London',
          onDiscount: true,
          price: '500',
          productDetails: 'Summer wear',
        ),
        ProductsModel(
          image: Images.babyClothes,
          name: 'Baby Clothes',
          brand: 'Lipsy London',
          onDiscount: true,
          price: '500',
          productDetails: 'Summer wear',
        ),
      ],
      dateDelivered: DateTime.now(),
      datePlaced: DateTime.now(),
      dateShipped: DateTime.now()),
];
