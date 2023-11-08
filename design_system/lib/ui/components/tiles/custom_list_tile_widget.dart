import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CustomListTileWidget extends StatelessWidget {
  final String text;
  final void Function()? onEditInformation;
  final void Function()? onDeleteInformation;

  const CustomListTileWidget({
    Key? key,
    required this.text,
    this.onEditInformation,
    this.onDeleteInformation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: const BoxDecoration(
          border: BorderDirectional(
            bottom: BorderSide(
              width: 1.5,
              color: Color(0x18000000),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Row(
            children: [
              const Spacer(),
              Text(
                text,
                style: AppTextStyles.extraBold18px,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              IconButton(
                onPressed: onEditInformation,
                iconSize: 40,
                padding: const EdgeInsets.all(0),
                icon: const Icon(
                  Icons.border_color,
                  size: 34,
                ),
              ),
              IconButton(
                onPressed: onDeleteInformation,
                iconSize: 40,
                padding: const EdgeInsets.all(0),
                icon: const Icon(
                  Icons.cancel,
                  color: AppColors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
