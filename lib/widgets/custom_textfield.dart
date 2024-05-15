import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
    decoration: InputDecoration(
      hintText: hint,
      hintStyle: AppStyles.styleRegular16(context).copyWith(color: const Color(0xFFAAAAAA)),
      fillColor: const Color(0xFFFAFAFA),
      filled: true,
      border: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color(0xFFAAAAAA)
        ),
          borderRadius: BorderRadius.circular(12)
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color(0xFFFAFAFA)
          ),
          borderRadius: BorderRadius.circular(12)
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color(0xFFFAFAFA)
          ),
          borderRadius: BorderRadius.circular(12)
      )

    ),
    );
  }
}
