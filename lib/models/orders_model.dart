import 'package:ecommerce_admin_panel/models/products_model.dart';
import 'package:ecommerce_admin_panel/models/user_model.dart';

import '../components/custom_widgets/enums.dart';

class OrdersModel {
  String? id;
  List<ProductsModel>? products;
  OrderStatus? orderStatus;
  String? dateTime;
  UserModel? customers;
  double? totalAmount;
  String? shippingAddress;
  String? billingAddress;
  String? paymentMethod;
  DateTime? datePlaced;
  DateTime? dateShipped;
  DateTime? dateDelivered;

  OrdersModel({
    this.id,
    this.customers,
    this.orderStatus,
    this.totalAmount,
    this.shippingAddress,
    this.billingAddress,
    this.paymentMethod,
    this.products,
    this.datePlaced,
    this.dateShipped,
    this.dateDelivered,
  });
}
