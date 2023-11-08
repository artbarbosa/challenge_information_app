import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../interactor/stores/login_store.dart';
import '../ui/pages/login_page.dart';

class LoginRouter extends StatelessWidget {
  LoginRouter({super.key});

  final LoginStore store = GetIt.I.get<LoginStore>();

  @override
  Widget build(BuildContext context) {
    return LoginPage(store: store);
  }
}
