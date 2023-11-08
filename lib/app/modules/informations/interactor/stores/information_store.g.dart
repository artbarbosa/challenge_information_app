// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'information_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$InformationStore on _InformationStore, Store {
  late final _$listInformationAtom =
      Atom(name: '_InformationStore.listInformation', context: context);

  @override
  ObservableList<InformationEntity> get listInformation {
    _$listInformationAtom.reportRead();
    return super.listInformation;
  }

  @override
  set listInformation(ObservableList<InformationEntity> value) {
    _$listInformationAtom.reportWrite(value, super.listInformation, () {
      super.listInformation = value;
    });
  }

  late final _$getListInformationAsyncAction =
      AsyncAction('_InformationStore.getListInformation', context: context);

  @override
  Future<void> getListInformation() {
    return _$getListInformationAsyncAction
        .run(() => super.getListInformation());
  }

  late final _$_InformationStoreActionController =
      ActionController(name: '_InformationStore', context: context);

  @override
  void validateTextInformation() {
    final _$actionInfo = _$_InformationStoreActionController.startAction(
        name: '_InformationStore.validateTextInformation');
    try {
      return super.validateTextInformation();
    } finally {
      _$_InformationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void createInformation() {
    final _$actionInfo = _$_InformationStoreActionController.startAction(
        name: '_InformationStore.createInformation');
    try {
      return super.createInformation();
    } finally {
      _$_InformationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editInformation({required String uuid}) {
    final _$actionInfo = _$_InformationStoreActionController.startAction(
        name: '_InformationStore.editInformation');
    try {
      return super.editInformation(uuid: uuid);
    } finally {
      _$_InformationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteInformation({required String uuid}) {
    final _$actionInfo = _$_InformationStoreActionController.startAction(
        name: '_InformationStore.deleteInformation');
    try {
      return super.deleteInformation(uuid: uuid);
    } finally {
      _$_InformationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listInformation: ${listInformation}
    ''';
  }
}
