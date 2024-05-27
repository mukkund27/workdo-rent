import 'package:flutter/material.dart';

import '../components/app_constant.dart';
import '../components/colors.dart';
import '../components/string.dart';

class GuestBox extends StatelessWidget {
  const GuestBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 15,
      width: width / 4.2,
      padding: EdgeInsets.symmetric(
        horizontal: width / 30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width / 50),
        border: Border.all(color: AppColors.boxBorder),
      ),
      child: Row(

        children: [
          Text(
            "2",
            style: TextStyle(
                fontSize: width / 17,
                fontFamily: AppText.montserratSemiBold),
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: AppColors.guestIconColor,
                size: width / 18,
              ),
              Icon(
                Icons.remove,
                size: width / 18,
                color: AppColors.guestIconColor,
              )
            ],
          )
        ],
      ),
    );
  }
}
