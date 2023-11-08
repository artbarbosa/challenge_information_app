import 'package:design_system/consts/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDialogDeleteWidget extends StatelessWidget {
  final void Function()? onDelete;
  final void Function()? onCancel;
  final String textInformation;

  const CustomDialogDeleteWidget({
    super.key,
    required this.onDelete,
    required this.onCancel,
    required this.textInformation,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Deseja excluir?'),
      content: Text('"$textInformation" será excluido'),
      actions: [
        TextButton(
          onPressed: onCancel,
          child: const Text(
            'CANCELAR',
          ),
        ),
        TextButton(
          onPressed: onDelete,
          child: const Text(
            'EXCLUIR',
            style: TextStyle(color: AppColors.red),
          ),
        ),
      ],
    );
  }
}
