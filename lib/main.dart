import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:information_app/app/core/shared/inject/inject.dart';

import 'app/app_widget.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  Inject.initialize();

  runApp(const AppWidget());
}
