import 'package:flutter/material.dart';
import 'package:rentworkdo/components/colors.dart';
import 'package:rentworkdo/components/string.dart';

// ignore: must_be_immutable
class CommonTextField extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final Function? onTap;
  final bool isSuffixIcon;
  final TextEditingController? textEditingController;
  final Widget? suffixIcon;
  final Widget? prefix;
  bool obscure;


  CommonTextField({super.key,
    this.onTap,
    this.hintText,
   this.isSuffixIcon = false,
    this.obscure = true,
    this.labelText,
    this.suffixIcon,
    this.textEditingController,
    this.prefix

});

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical:TextAlignVertical.center ,
      cursorColor: AppColors.whiteColor,
      controller: widget.textEditingController,
      obscureText: widget.obscure,
      style: TextStyle(color: AppColors.whiteColor),
      decoration: InputDecoration(
        isDense: true,
        prefix: widget.prefix,
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontFamily: AppText.montserratMedium,
          //fontWeight: FontWeight.w900
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(23),
        ),
        border:  const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(23),),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(23)),
          borderSide: BorderSide(
              color:  Colors.white ,width: 1),
        ),
        suffixIcon:
        widget.isSuffixIcon == true
           ? widget.suffixIcon: null
      ),
    );
  }
}
