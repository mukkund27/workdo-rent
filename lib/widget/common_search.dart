import 'package:flutter/material.dart';
import '../components/app_constant.dart';
import '../components/colors.dart';
import '../components/images.dart';
import '../components/string.dart';

// ignore: must_be_immutable
class CommonSearch extends StatelessWidget {
  final String hinttxt;
  Function ? onTap;
   CommonSearch({Key? key, required this.hinttxt,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 18,
      width: width,
      padding:
          EdgeInsets.symmetric(horizontal: width / 50, vertical: width / 50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width / 50),
          border: Border.all(color: AppColors.searchBorderColor)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: width / 1.3,
            child: TextField(
                onTap: () {
                  onTap!();
                },
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontSize: width / 29,
                        fontFamily: AppText.montserratSemiBold,
                        color: AppColors.blackColor),
                    hintText: hinttxt,
                    border: InputBorder.none)),
          ),
          const Spacer(),
          Image.asset(AppIcon.search,
              color: AppColors.blackColor, scale: width / 300),
          SizedBox(
            width: width / 100,
          ),
        ],
      ),
    );
  }
}
