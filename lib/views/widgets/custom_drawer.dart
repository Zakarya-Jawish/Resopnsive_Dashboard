import 'package:flutter/material.dart';
import 'package:responsive_dashboard_x/models/drawer_itme_model.dart';
import 'package:responsive_dashboard_x/utils/app_images.dart';
import 'package:responsive_dashboard_x/views/widgets/drawer_item_list_view.dart';
import 'package:responsive_dashboard_x/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.dashboard, title: 'Dashboard'),
    DrawerItemModel(
      image: Assets.myTransctions,
      title: 'My Transaction',
    ),
    DrawerItemModel(image: Assets.statistics, title: 'Statistics'),
    DrawerItemModel(
      image: Assets.walletAccount,
      title: 'Wallet Account',
    ),
    DrawerItemModel(
      image: Assets.myInvestments,
      title: 'My Investments',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 28.0, right: 20),
            child: UserInfoListTile(
              image: Assets.avatar3,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
          ),
          const SizedBox(height: 8),
          DrawerItemListView(items: items),
        ],
      ),
    );
  }
}
