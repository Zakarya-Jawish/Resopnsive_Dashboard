import 'package:flutter/material.dart';
import 'package:responsive_dashboard_x/models/drawer_itme_model.dart';
import 'package:responsive_dashboard_x/utils/app_images.dart';
import 'package:responsive_dashboard_x/views/widgets/drawer_section/drawer_item_list_view.dart';
import 'package:responsive_dashboard_x/views/widgets/drawer_section/unactive_drawer_item.dart';
import 'package:responsive_dashboard_x/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 28.0, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const UserInfoListTile(
                image: Assets.avatar3,
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
              ),
              const SizedBox(height: 8),
              const DrawerItemListView(),
              UnActiveDrawerItem(
                drawerItemModel: DrawerItemModel(
                  image: Assets.settings,
                  title: 'Settings system',
                ),
              ),
              UnActiveDrawerItem(
                drawerItemModel: DrawerItemModel(
                  image: Assets.logout,
                  title: 'Logout account',
                ),
              ),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
