import 'package:ecommerce_admin_panel/screens/login_screen.dart';
import 'package:ecommerce_admin_panel/utils/init.dart';
import 'package:ecommerce_admin_panel/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'helper/route_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        getPages: Routes.routes,
        initialBinding: HomeBindings(),
        home: const LoginScreen());
  }
}
