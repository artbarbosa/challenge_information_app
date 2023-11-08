// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../interactor/stores/information_store.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({
    Key? key,
    required this.store,
  }) : super(key: key);

  final InformationStore store;

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
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.38,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Observer(
                      builder: (context) => ListView.builder(
                        shrinkWrap: true,
                        itemCount: store.listInformation.length,
                        itemBuilder: (context, index) {
                          final information = store.listInformation[index];
                          return CustomListTileWidget(
                            text: information.text,
                            onEditInformation: () {
                              store.editInformation(uuid: information.uuid);
                            },
                            onDeleteInformation: () {
                              showDialog(
                                context: context,
                                builder: (context) => CustomDialogDeleteWidget(
                                  onCancel: () {
                                    Navigator.of(context).pop();
                                  },
                                  onDelete: () {
                                    store.deleteInformation(
                                        uuid: information.uuid);
                                    Navigator.of(context).pop();
                                  },
                                  textInformation: information.text,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Observer(
                    builder: (context) => TextField(
                      controller: store.textController,
                      textAlign: TextAlign.center,
                      onEditingComplete: () {
                        store.createInformation();
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Digite seu texto',
                        hintStyle: AppTextStyles.extraBold18px.copyWith(color: Colors.black),
                        errorText: store.error.textInformation,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Spacer(),
                  const PrivacyButton()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
