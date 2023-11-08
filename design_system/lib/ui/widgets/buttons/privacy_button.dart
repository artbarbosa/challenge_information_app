
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PrivacyButton extends StatelessWidget {
  const PrivacyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        launchUrlString("https://www.google.com/");
      },
      child: const Text(
        "Política de Privacidade",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
