import 'package:ecommerce_admin_panel/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helper/route_helper.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: kprimary),
            accountName: Text('flutter'),
            accountEmail: Text('skhattak30@gmail.com'),
            currentAccountPicture: FlutterLogo(),
          ),
          ListTile(
            onTap: () => Get.toNamed(Routes.dashboard),
            leading: const Icon(Icons.dashboard_outlined),
            title: Text(
              'Dashboard',
              style:
                  Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 15),
            ),
          ),
          ListTile(
            onTap: () => Get.toNamed(Routes.order),
            leading: const Icon(Icons.shopping_bag),
            title: Text(
              'Order Management',
              style:
                  Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 15),
            ),
          ),
          ListTile(
            onTap: () => Get.toNamed(Routes.customers),
            leading: const Icon(Icons.people),
            title: Text('Customers Management',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 15)),
          ),
          ListTile(
            onTap: () => Get.toNamed(Routes.categories),
            leading: const Icon(Icons.category_rounded),
            title: Text('Categories Management',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 15)),
          ),
          ListTile(
            onTap: () {
              Get.toNamed(Routes.items);
            },
            leading: const Icon(Icons.add_box_outlined),
            title: Text('Items management',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 15)),
          ),
          ListTile(
            onTap: () => Get.toNamed(Routes.notifications),
            leading: const Icon(Icons.notifications_active),
            title: Text('Notifications',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 15)),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: Text('logout',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 15)),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
