// ignore_for_file: use_build_context_synchronously

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../interactor/stores/login_store.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.store});
  final LoginStore store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
          decoration: const BoxDecoration(
            gradient: AppGradient.gradientBackground,
          ),
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Form(
              key: store.formKey,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    CustomTextFormField(
                      label: "Usuário",
                      icon: const Icon(Icons.person, color: Colors.black),
                      obscureText: false,
                      validator: store.validateEmail,
                      controller: store.emailTextController,
                    ),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      label: "Senha",
                      icon: const Icon(Icons.lock, color: Colors.black),
                      obscureText: true,
                      validator: store.validatePassword,
                      controller: store.passwordTextController,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'^[a-zA-Z0-9]*$'),
                        )
                      ],
                    ),
                    const SizedBox(height: 25),
                    CustomRoundedButtonWidget(
                      onPressed: () async {
                        await store.loginEmail(context);
                      },
                    ),
                    const Spacer(),
                    const PrivacyButton()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
