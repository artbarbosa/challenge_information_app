// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

import '../../interactor/entities/information_entity.dart';
import '../repositories/information_repository_interface.dart';
import '../states/form_information_error_state.dart';

part 'information_store.g.dart';

class InformationStore = _InformationStore with _$InformationStore;

abstract class _InformationStore with Store {
  _InformationStore({required this.repository}) {
    getListInformation();
  }

  final FormInformationErrorState error = FormInformationErrorState();
  final IInformationRepository repository;
  final TextEditingController textController = TextEditingController();

  @action
  void validateTextInformation() {
    if (textController.text.isEmpty) {
      error.textInformation = 'Cannot be Empty';
      return;
    }
    error.textInformation = null;
  }

  @observable
  ObservableList<InformationEntity> listInformation =
      ObservableList<InformationEntity>();

  @action
  Future<void> getListInformation() async {
    final result = await repository.getListInformation();
    listInformation.addAll(result);
  }

  @action
  void createInformation() {
    validateTextInformation();
    if (!error.hasErrors) {
      listInformation.add(
        InformationEntity(
          text: textController.text,
          uuid: const Uuid().v4(),
        ),
      );
      textController.text = "";
      repository.saveListInformation(listInformation);
    }
  }

  @action
  void editInformation({required String uuid}) {
    validateTextInformation();
    if (!error.hasErrors) {
      final index =
          listInformation.indexWhere((element) => element.uuid == uuid);
      listInformation[index] =
          listInformation[index].copyWith(text: textController.text);
      textController.text = "";
    }
  }

  @action
  void deleteInformation({required String uuid}) {
    listInformation.removeWhere((element) => element.uuid == uuid);
    repository.saveListInformation(listInformation);
  }
}
