import 'package:flutter/material.dart';

import '../styel/color.dart';


class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({
    super.key,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    required this.label,
    this.validator,
    required this.prefixIcon,
    this.suffixIcon,
    this.onSubmitted,
    this.isPassword = false,
    this.contentVerticalPadding = 16.0 ,
  });
  final bool isPassword ;
  final Widget label;
  final Widget prefixIcon;
  Widget? suffixIcon;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final String? Function(String?)? validator;
   double contentVerticalPadding ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      controller: controller,
      onFieldSubmitted:  onSubmitted,
      validator: validator ,

      keyboardType: keyboardType,
      onChanged: onChanged,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: contentVerticalPadding ),
        label: label ,
        prefixIcon: prefixIcon ,
        suffixIcon: suffixIcon ,
        errorStyle: const TextStyle(color: Colors.white),
        border: const OutlineInputBorder(

          borderSide: BorderSide(color: Colors.tealAccent), // Set border color
        ),
        enabledBorder:  const OutlineInputBorder(

          borderSide: BorderSide(color: Colors.white), // Set enabled border color
        ),
        focusedBorder:   const OutlineInputBorder(
          borderSide: BorderSide(color: mainColor, width: 2.0), // Set focused border color and width
        ),
        errorBorder:  const OutlineInputBorder(
          borderSide: BorderSide(color:mainColor), // Set error border color
        ),
        focusedErrorBorder:  const OutlineInputBorder(
          borderSide: BorderSide(color: mainColor, width: 2.0), // Set focused error border color and width
        ),
      ),
    );
  }
}
