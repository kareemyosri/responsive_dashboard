import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import '../models/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});
final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(userInfoModel.title,
        style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(userInfoModel.subtitle,
        style: AppStyles.styleRegular12(context),
        ),
      
      ),
    );
  }
}
