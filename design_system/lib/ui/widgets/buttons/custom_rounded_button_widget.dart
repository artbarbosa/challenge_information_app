import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CustomRoundedButtonWidget extends StatelessWidget {
  const CustomRoundedButtonWidget({super.key, this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(
          Size(
            MediaQuery.of(context).size.width * 0.45,
            45,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          AppColors.green,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        "Entrar",
        style: AppTextStyles.medium16px.copyWith(color: AppColors.white),
      ),
    );
  }
}
