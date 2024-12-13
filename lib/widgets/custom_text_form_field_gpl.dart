import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final IconData? suffixIcon;
  final bool obscureText;
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.suffixIcon,
    required this.obscureText, this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      obscureText: obscureText,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText ?? '',
          suffixIcon: Icon(Icons.person),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10)))),
    );
  }
}
