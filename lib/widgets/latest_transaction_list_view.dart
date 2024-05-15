import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

import '../utils/aap_images.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const List<UserInfoModel> transactionItems=[
    UserInfoModel(image: Assets.imagesAvatar1, title: 'Madrani Andi', subtitle: 'Madraniadi20@gmailMadraniadi20Madraniadi20'),
    UserInfoModel(image: Assets.imagesAvatar2, title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(image: Assets.imagesAvatar3, title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail')
  ];
  @override
  Widget build(BuildContext context) {
    // usage for few items
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: transactionItems.map((e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e,))).toList(),
      ),
    );

    // usage for more items to better performance
    return SizedBox(
      height: 80,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>IntrinsicWidth(child: UserInfoListTile(userInfoModel: transactionItems[index])),

          separatorBuilder: (context,index)=>const SizedBox(width: 5,), itemCount: transactionItems.length),
    );
  }
}
