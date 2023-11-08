import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../interactor/stores/information_store.dart';
import '../ui/pages/information_page.dart';

class InformationRouter extends StatelessWidget {
  InformationRouter({super.key});

  final InformationStore store = GetIt.I.get<InformationStore>();

  @override
  Widget build(BuildContext context) {
    return InformationPage(store: store);
  }
}
