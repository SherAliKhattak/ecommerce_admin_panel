import 'package:ecommerce_admin_panel/screens/categories_management/categories_management.dart';
import 'package:ecommerce_admin_panel/screens/customer_details_screen/customer_details.dart';
import 'package:ecommerce_admin_panel/screens/customers_management/customers_management.dart';
import 'package:ecommerce_admin_panel/screens/dashboard/dashboard.dart';
import 'package:ecommerce_admin_panel/screens/items_management/items_management.dart';
import 'package:ecommerce_admin_panel/screens/login_screen.dart';
import 'package:ecommerce_admin_panel/screens/notifications/notifications_screen.dart';
import 'package:ecommerce_admin_panel/screens/orders_management/orders_management.dart';
import 'package:get/get.dart';

class Routes {
  static const String login = '/login';
  static const String dashboard = '/dashboard';
  static const String order = '/order';
  static const String customers = '/customers';
  static const String categories = '/categoriess';
  static const String items = '/items';
  static const String notifications = '/notifications';
  static const String customerDetails = '/customerDetails';
  static String getLogin() => login;
  static String getdashboard() => dashboard;
  static String getorder() => order;
  static String getcustoemers() => customers;
  static String getcategories() => categories;
  static String getItems() => items;
  static String getNotificatiosn() => notifications;
  static String getCustomerDetails() => customerDetails;
  static List<GetPage> routes = [
    GetPage(
        name: login,
        page: () {
          return const LoginScreen();
        },
        transition: Transition.circularReveal,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
        name: dashboard,
        page: () {
          return const Dashboard();
        },
        transition: Transition.circularReveal,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
        name: customers,
        page: () {
          return const CustomerManagementScreen();
        },
        transition: Transition.circularReveal,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
        name: categories,
        page: () {
          return const CategoriesManagement();
        },
        transition: Transition.circularReveal,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
        name: items,
        page: () {
          return const ItemsManagement();
        },
        transition: Transition.circularReveal,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
        name: order,
        page: () {
          return const OrdersManagemet();
        },
        transition: Transition.circularReveal,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
        name: notifications,
        page: () {
          return const PushNotifications();
        },
        transition: Transition.circularReveal,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
        name: customerDetails,
        page: () {
          return const CustomerDetails();
        },
        transition: Transition.circularReveal,
        transitionDuration: const Duration(milliseconds: 500)),
  ];
}
