import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key, required this.text, required this.img});
  final String text;
  final String img;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: height * (50 / 812),
      decoration: BoxDecoration(
          border: Border.all(
              width: 1, color: AppColors.C_1F5460.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(4)),
      child: TextField(
        cursorHeight: 20,
        cursorWidth: 1.4,
        cursorColor: AppColors.C_879EA4.withOpacity(0.2),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          border: InputBorder.none,
          icon: SvgPicture.asset(img),
          hintText: text,
          hintStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.C_879EA4,
              fontFamily: "Sora"),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide:
            const BorderSide(width: 1, color: AppColors.white),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.white,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}