import 'package:mobx/mobx.dart';

part 'form_information_error_state.g.dart';

// ignore: library_private_types_in_public_api
class FormInformationErrorState = _FormInformationErrorState
    with _$FormInformationErrorState;

abstract class _FormInformationErrorState with Store {
  @observable
  String? textInformation;

  @computed
  bool get hasErrors => textInformation != null;
}
