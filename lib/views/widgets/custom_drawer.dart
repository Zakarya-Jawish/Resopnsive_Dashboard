import 'package:flutter/material.dart';
import 'package:responsive_dashboard_x/utils/app_images.dart';
import 'package:responsive_dashboard_x/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 28.0, right: 20),
            child: UserInfoListTile(
              image: Assets.avatar3,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
