// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// class CommonTextField extends StatefulWidget {
//   final String? hintText;
//   final String? labelText;
//   final Function? onTap;
//   final ValueChanged<String>? onChanged;
//   final ValueChanged<String>? onSubmitted;
//   final bool isAutoCompleteEnabled;
//   final double? width;
//   final double? height;
//   final String? errorText;
//   final TextCapitalization textCapitalization;
//   final String? initialValue;
//   final int? maxLines;
//   final Color? backgroundColor;
//   final TextInputType keyboardType;
//   final TextEditingController? textEditingController;
//   final Color? textColor;
//   final bool isTextObscured;
//   final bool isSuffixIcon;
//   final Widget? suffixIcon;
//   final Function? onSuffixClick;
//   final bool isAutoFocus;
//   final String? validator;
//   final bool isFinalKeyboard;
//   final FocusNode? focus;
//   final FocusNode? nextFocus;
//   final Widget? prefix;
//   final bool? readOnly;
//   final bool? enable;
//   final Widget? suffix;
//   final List<TextInputFormatter>? inputFormatters;
//   final FormFieldValidator<String>? validators;
//   final Iterable<String>? autoFillHints;
//   final int? maxLength;
//   final String? obscureCharacter;
//   final AutovalidateMode? autoValidateMode;
//   final bool enableAutoValidate;
//
//   const CommonTextField({
//     Key? key,
//     this.initialValue,
//     this.hintText,
//     this.onTap,
//     this.height,
//     this.errorText,
//     this.onChanged,
//     this.onSubmitted,
//     this.width,
//     this.suffix,
//     this.backgroundColor,
//     this.keyboardType = TextInputType.text,
//     this.textCapitalization = TextCapitalization.none,
//     this.textEditingController,
//     this.isAutoCompleteEnabled = true,
//     this.textColor,
//     this.isTextObscured = false,
//     this.isSuffixIcon = false,
//     this.suffixIcon,
//     this.onSuffixClick,
//     this.isAutoFocus = false,
//     this.validator,
//     this.isFinalKeyboard = false,
//     this.focus,
//     this.nextFocus,
//     this.prefix,
//     this.maxLines = 1,
//     this.readOnly = false,
//     this.enable = true,
//     this.inputFormatters,
//     this.labelText = '',
//     this.validators,
//     this.maxLength,
//     this.autoFillHints,
//     this.obscureCharacter,
//     this.autoValidateMode,
//     this.enableAutoValidate = false,
//   }) : super(key: key);
//
//   @override
//   // ignore: library_private_types_in_public_api
//   _CommonTextFieldState createState() =>
//       // ignore: no_logic_in_create_state
//   _CommonTextFieldState(isTextObscured);
// }
//
// class _CommonTextFieldState extends State<CommonTextField> {
//   bool _isTextObscured = true;
//   bool isValidValue = true;
//
//   _CommonTextFieldState(bool isTextObscured) {
//     _isTextObscured = isTextObscured;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//
//       initialValue: widget.initialValue,
//       cursorColor: Colors.black,
//       autovalidateMode: widget.enableAutoValidate
//           ? widget.autoValidateMode ?? AutovalidateMode.always
//           : AutovalidateMode.disabled,
//       autofillHints: widget.autoFillHints,
//       maxLength: widget.maxLength,
//       enabled: widget.enable,
//       readOnly: widget.readOnly!,
//       autofocus: widget.isAutoFocus,
//       keyboardType: widget.keyboardType,
//       textAlign: TextAlign.left,
//       textAlignVertical: TextAlignVertical.center,
//       textInputAction: widget.isFinalKeyboard
//           ? TextInputAction.done
//           : TextInputAction.next,
//       textCapitalization: widget.textCapitalization,
//       obscureText: _isTextObscured,
//       validator: widget.validators ??
//               (value) => value!.isEmpty ? widget.validator : null,
//       focusNode: widget.focus,
//       onTap: () {
//         if (widget.onTap != null) {
//           widget.onTap!();
//         }
//       },
//       onChanged: (text) {
//         if (widget.onChanged != null) {
//           widget.onChanged!(text);
//         }
//       },
//       onFieldSubmitted: (v) {
//         if (widget.onSubmitted != null) {
//           widget.onSubmitted!(v);
//         }
//         if (widget.nextFocus != null) {
//           FocusScope.of(context).requestFocus(widget.nextFocus);
//         }
//       },
//       inputFormatters: widget.inputFormatters,
//       style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
//       decoration: InputDecoration(
//           counterText: '',
//           prefix: widget.prefix,
//           border: const OutlineInputBorder(
//             borderRadius: BorderRadius.all(Radius.circular(15)),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: const BorderRadius.all(Radius.circular(15)),
//             borderSide: BorderSide(
//                 color: isValidValue ? Colors.black : Colors.red, width: 1),
//           ),
//           errorBorder: const OutlineInputBorder(
//             borderRadius: BorderRadius.all(Radius.circular(15)),
//             borderSide: BorderSide(color: Colors.red, width: 2),
//           ),
//           labelStyle: TextStyle(
//             color: Colors.black54,
//             // fontWeight: FontWeight.w700,
//             // fontSize: 15,
//           ),
//           hintStyle: TextStyle(
//             color: Colors.black54,
//             // fontWeight: FontWeight.w700,
//             // fontSize:12,
//           ),
//           labelText: widget.hintText,
//           hintText: widget.labelText ?? '',
//           suffixIcon: widget.suffixIcon == null
//               ? widget.isSuffixIcon
//               ? IconButton(
//               color: Colors.black,
//               icon: _isTextObscured
//                   ? const Icon(Icons.visibility)
//                   : const Icon(Icons.visibility_off),
//               onPressed: () {
//                 setState(() {
//                   _isTextObscured = !_isTextObscured;
//                 });
//               })
//               : null
//               : GestureDetector(
//               onTap: () {
//                 if (widget.onSuffixClick != null) {
//                   widget.onSuffixClick!();
//                 }
//               },
//               child: Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: widget.suffixIcon,
//               ) /*Icon(
//                   widget.suffixIcon,
//                   color: kNormalColor,
//                 ),*/
//           ),
//           errorStyle: const TextStyle(
//               color: Colors.red, fontWeight: FontWeight.w400, fontSize: 12),
//           filled: true,
//           fillColor: Colors.transparent,
//           suffix: widget.suffix,
//           errorText: widget.errorText,
//           errorMaxLines: 2),
//       controller: widget.textEditingController,
//       maxLines: widget.maxLines,
//     );
//   }
// }
