import 'package:ecommerce_admin_panel/components/custom_widgets/custom_textfield.dart';
import 'package:ecommerce_admin_panel/components/custom_widgets/primary_button.dart';
import 'package:ecommerce_admin_panel/components/custom_widgets/responsive_layout.dart';
import 'package:ecommerce_admin_panel/utils/style.dart';
import 'package:ecommerce_admin_panel/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/images/images.dart';
import '../helper/route_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(paddingExtraLarge(context)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    responsiveVisibility(
                            context: context, phone: false, tablet: false)
                        ? Expanded(
                            child: Image.asset(
                              Images.online,
                              height: Get.height * 0.5,
                              width: Get.width * 0.5,
                              fit: BoxFit.contain,
                            ),
                          )
                        : const SizedBox(),
                    Expanded(
                      child: Card(
                        margin: EdgeInsets.all(paddingDefault(context)),
                        elevation: 5,
                        child: Padding(
                          padding: EdgeInsets.all(paddingLarge(context)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Login',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Text(
                                'Welcome Back',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Image.asset(
                                Images.eco,
                                height: Get.height * 0.2,
                                width: Get.height * 0.2,
                                fit: BoxFit.contain,
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Email',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              const CustomTextField(
                                prefixIcon: Icon(
                                  Icons.mail_outline_outlined,
                                  color: kprimary,
                                ),
                                borderRadius: 5,
                                initialValue: 'enter email',
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Password',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              const CustomTextField(
                                margin: EdgeInsets.only(top: 5),
                                prefixIcon: Icon(
                                  Icons.lock_outline,
                                  color: kprimary,
                                ),
                                borderRadius: 5,
                                initialValue: 'Enter password',
                                suffixIconData: Icons.visibility,
                              ),
                              SizedBox(
                                width: Get.height * 0.02,
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      activeColor: kprimary,
                                      checkColor: kwhiteColor,
                                      value: true,
                                      onChanged: ((value) {})),
                                  SizedBox(
                                    width: Get.width * 0.01,
                                  ),
                                  Text(
                                    'Remember me',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Get.height * 0.05,
                              ),
                              PrimaryButon(
                                width: Get.width,
                                height: Get.height * 0.075,
                                title: 'Login',
                                onPressed: () {
                                  Get.toNamed(
                                    Routes.dashboard,
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
