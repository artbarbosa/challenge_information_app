// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/auth/interactor/stores/auth_store.dart';
import '../../../../core/shared/consts/app_routes_const.dart';
import '../entities/login_credential_entity.dart';
import '../repositories/login_repository_interface.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  final AuthStore authStore;
  final ILoginRepository repository;

  _LoginStore({
    required this.authStore,
    required this.repository,
  });

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();

  @computed
  LoginCredential get credential => LoginCredential.withEmailAndPassword(
        email: emailTextController.text,
        password: passwordTextController.text,
      );
  @computed
  bool get isValid => credential.isValidEmail && credential.isValidPassword;

  Future<void> loginEmail(BuildContext context) async {
    try {
      if (formKey.currentState!.validate()) {
        var user = await repository.loginWithEmailAndPassword(
          loginCredential: credential,
        );
        authStore.setUser(user);
        Navigator.of(context).pushReplacementNamed(AppRoutesConst.information);
      }
    } catch (e) {
      // ERROR
    }
  }

    String? validateEmail(String? value) {
    if (value != null && value.isEmpty) {
      return 'Campo obrigatória';
    }else if (value!.length >= 20) {
      return 'Máximo 20 caracteres';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value != null && value.isEmpty) {
      return 'Campo obrigatória';
    } else if (value!.length <= 2) {
      return 'Mínimo 2 caracteres';
    } else if (value.length >= 20) {
      return 'Máximo 20 caracteres';
    }
    return null;
  }
}
