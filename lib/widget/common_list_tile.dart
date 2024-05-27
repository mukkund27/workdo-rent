import 'package:flutter/material.dart';
import 'package:rentworkdo/components/app_constant.dart';
import 'package:rentworkdo/components/string.dart';

class ComListTile extends StatelessWidget {
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final Widget leading;
  final Widget trailing;
  final String title;
  final String subtitle;

  const ComListTile(
      {super.key,
      required this.backgroundColor,
      required this.leading,
      required this.title,
      required this.subtitle,
      required this.trailing,
      required this.borderColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 12,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(width / 30),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: width / 30,
          ),
          leading,
          SizedBox(
            width: width / 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: textColor,
                    fontSize: width / 28,
                    fontFamily: AppText.montserratBold),
              ),
              Text(
                subtitle,
                style: TextStyle(
                    color: textColor,
                    fontSize: width / 28,
                    fontFamily: AppText.montserratMedium),
              ),
            ],
          ),
          const Spacer(),
          trailing,
          SizedBox(
            width: width / 50,
          ),
        ],
      ),
    );
  }
}
