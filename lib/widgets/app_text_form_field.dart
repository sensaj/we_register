import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
 final bool obscureText;
 final String labelText;
 final String? Function(String? value)? validator;
final TextInputType? keyboardType;
   AppTextFormField({
    super.key,
    this.obscureText=false,
    required this.labelText,
    this.validator,
    this.keyboardType
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red[50]!)
        ),
        labelText: labelText
      ),
      validator: validator,
    );
  }
}