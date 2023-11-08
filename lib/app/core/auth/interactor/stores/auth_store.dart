// ignore_for_file: library_private_types_in_public_api
import 'package:mobx/mobx.dart';

import '../../domain/entities/logged_user_entity.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store {
  _AuthStore();

  @observable
  LoggedUserEntity? user;

  @computed
  bool get isLogged => user != null;

  @action
  void setUser(LoggedUserEntity value) => user = value;
}
