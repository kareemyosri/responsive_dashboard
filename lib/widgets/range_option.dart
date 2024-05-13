import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xffF1F1F1)),

            borderRadius: BorderRadius.circular(12)
        ),
      ),
      child: Row(
        children: [
          Text('Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(width: 18,),
          Transform.rotate(
              angle: -1.5708,
              child: const Icon(Icons.arrow_back_ios_new_outlined))

        ],
      ),
    );
  }
}
