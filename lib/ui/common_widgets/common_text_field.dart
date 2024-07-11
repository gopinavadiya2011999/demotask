import 'package:demotask/infrastructure/constant/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField(
      {super.key,
      this.validator,
      required this.hintText,
      this.errorText,
      required this.controller,
      this.keyboardType,
      this.obscureText,
      this.suffix,
      this.phone = false,
      this.textCapitalization});

  final FormFieldValidator<String>? validator;
  final String hintText;
  final String? errorText;
  final Widget? suffix;
  final bool? obscureText;
  final bool phone;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final TextCapitalization? textCapitalization;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [
        ColorConstant.blueDe,
        ColorConstant.blueBf,
      ])),
      child: TextFormField(

          obscureText: obscureText ?? false,
          controller: controller,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          textAlignVertical: TextAlignVertical.center,
          validator: validator,
          style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w400, color: ColorConstant.blackColor),
          keyboardType: keyboardType ?? TextInputType.text,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIconConstraints: const BoxConstraints(maxWidth: 40, maxHeight: 25),
            isDense: true,
            filled: true,
            fillColor: Colors.white,
            hintStyle: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w400, color: ColorConstant.grey1D),
            suffixIcon: suffix ?? const SizedBox(),
            border:commonBorder(),
            focusedBorder: commonBorder(),
            disabledBorder: commonBorder(),
            enabledBorder: commonBorder(),
            focusedErrorBorder: commonBorder(),
            errorBorder: commonBorder()
          )),
    );
  }
}

commonBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color:Colors.transparent));
}
