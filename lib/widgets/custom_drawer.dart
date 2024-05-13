import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/aap_images.dart';
import 'package:responsive_dashboard/widgets/active_inactive_drawer_item.dart';
import 'package:responsive_dashboard/widgets/darwer_item.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

import 'drwer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:  const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child:UserInfoListTile(image: Assets.imagesAvatar3, title: 'Lekan Okeowo', subtitle: 'demo@gmail.com') ,
          ),
          SliverToBoxAdapter(
            child:SizedBox(height: 8,)
          ),

          DrawerItemsListView(),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDrawerItem(drawerItemModel: DrawerItemModel(title: 'Setting system', image: Assets.imagesSettings)),
                InActiveDrawerItem(drawerItemModel: DrawerItemModel(title: 'Logout account', image: Assets.imagesLogout)),
                SizedBox(height: 48,)
              ],
            ),
          )


        ],
      ),
    );
  }
}
