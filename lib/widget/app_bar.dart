import 'package:flutter/material.dart';
import 'package:rentworkdo/components/app_constant.dart';

import '../components/colors.dart';
import '../components/string.dart';

class Appbar extends StatelessWidget {
  final Widget? leadingIcon;
  final String? title;
  final Widget? trailingIcon;
  final bool? isLeading;
  final bool? isTrailing;
  final void Function()? onTapTrailing;
  final void Function()? onTapLeading;


  const Appbar(
      {super.key, this.leadingIcon,
      this.title,
      this.trailingIcon,
       this.isLeading,
       this.isTrailing, this.onTapTrailing, this.onTapLeading});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 7.5,
      color: AppColors.whiteColor,
      padding: EdgeInsets.only(
          left: width / 30, top: height / 20, right: width / 30),
      child: Row(
        children: [
          isLeading == true
              ? GestureDetector(onTap: onTapLeading,
                child: Container(
                    height: height / 20,
                    width: height / 18,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.boxBorder),
                      borderRadius: BorderRadius.circular(width / 80),
                    ),
                    child: leadingIcon,
                  ),
              )
              : const SizedBox(),
          isLeading == true?SizedBox(
            width: width / 30,
          ):const SizedBox(),
          Text(
            title ?? "",
            style: TextStyle(
                fontFamily: AppText.montserratBold,
                fontSize: width / 20,
                color: AppColors.blackColor),
          ),
          const Spacer(),
          isTrailing == true
              ? GestureDetector(onTap:onTapTrailing ,
                child: Container(
                    height: height / 20,
                    width: height / 18,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.boxBorder),
                        borderRadius: BorderRadius.circular(width / 80)),
                    child: trailingIcon,
                  ),
              )
              : const SizedBox(),
        ],
      ),
    );
  }
}
