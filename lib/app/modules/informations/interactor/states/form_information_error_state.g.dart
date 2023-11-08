// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_information_error_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FormInformationErrorState on _FormInformationErrorState, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_FormInformationErrorState.hasErrors'))
          .value;

  late final _$textInformationAtom = Atom(
      name: '_FormInformationErrorState.textInformation', context: context);

  @override
  String? get textInformation {
    _$textInformationAtom.reportRead();
    return super.textInformation;
  }

  @override
  set textInformation(String? value) {
    _$textInformationAtom.reportWrite(value, super.textInformation, () {
      super.textInformation = value;
    });
  }

  @override
  String toString() {
    return '''
textInformation: ${textInformation},
hasErrors: ${hasErrors}
    ''';
  }
}
