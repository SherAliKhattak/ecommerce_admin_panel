// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:ecommerce_admin_panel/components/custom_widgets/responsive_layout.dart';
import 'package:ecommerce_admin_panel/utils/constants.dart';
import 'package:flutter/material.dart';

import '../images/images.dart';

class AdminPanel extends StatefulWidget {
  final Widget? body;
  const AdminPanel({super.key, this.body});

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      key: _key,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: responsiveVisibility(
                context: context,
                phone: true,
                tablet: true,
                tabletLandscape: true,
                desktop: false)
            ? IconButton(
                onPressed: (() {
                  _key.currentState!.openDrawer();
                }),
                icon: const Icon(Icons.menu))
            : const SizedBox(),
        title: const Text(appname),
        actions: [
          ClipOval(
              child: Image.asset(
            Images.fb,
            height: 30,
            width: 30,
          )),
          const SizedBox(
            width: 20,
          ),
          const Icon(Icons.notifications),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      drawer: NavigationDrawer(),
      body: Row(
        children: [
          responsiveVisibility(context: context, desktop: false)
              ? const SizedBox()
              : const NavigationDrawer(),
          Expanded(child: widget.body!),
        ],
      ),
    );
  }
}
