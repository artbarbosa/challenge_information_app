import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.icon,
    required this.controller,
    this.validator,
    required this.obscureText,
    required this.label, this.inputFormatters,
  }) : super(key: key);

  final String label;
  final Icon icon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5, bottom: 5),
          child: Text(label,
              style: AppTextStyles.regular16px.copyWith(
                color: AppColors.white,
              )),
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          controller: controller,
          validator: validator,
          obscureText: obscureText,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            prefixIcon: icon,
            filled: true,
            fillColor: AppColors.white,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.white),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.white),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
