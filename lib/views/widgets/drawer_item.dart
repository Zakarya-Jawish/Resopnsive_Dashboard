import 'package:flutter/material.dart';
import 'package:responsive_dashboard_x/models/drawer_itme_model.dart';
import 'package:responsive_dashboard_x/views/widgets/drawer_section/active_drawer_item.dart';
import 'package:responsive_dashboard_x/views/widgets/drawer_section/unactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return !isActive
        ? UnActiveDrawerItem(drawerItemModel: drawerItemModel)
        : ActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
