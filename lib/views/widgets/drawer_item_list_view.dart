import 'package:flutter/material.dart';
import 'package:responsive_dashboard_x/models/drawer_itme_model.dart';
import 'package:responsive_dashboard_x/utils/app_images.dart';
import 'package:responsive_dashboard_x/views/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() =>
      _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeIndex = 0;
  List<DrawerItemModel> items = [
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
    return Expanded(
      child: ListView.builder(
        shrinkWrap: false,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder:
            (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: GestureDetector(
                onTap: () {
                  if (activeIndex != index) {
                    setState(() {
                      activeIndex = index;
                    });
                  }
                },
                child: DrawerItem(
                  drawerItemModel: items[index],
                  isActive: index == activeIndex,
                ),
              ),
            ),
        itemCount: items.length,
      ),
    );
  }
}
