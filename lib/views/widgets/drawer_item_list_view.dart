import 'package:flutter/material.dart';
import 'package:responsive_dashboard_x/models/drawer_itme_model.dart';
import 'package:responsive_dashboard_x/views/widgets/drawer_item.dart';

class DrawerItemListView extends StatelessWidget {
  const DrawerItemListView({super.key, required this.items});

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: false,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder:
            (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: DrawerItem(drawerItemModel: items[index]),
            ),
        itemCount: items.length,
      ),
    );
  }
}
