import 'package:information_app/app/core/auth/domain/entities/logged_user_entity.dart';
import 'package:information_app/app/modules/login/data/datasources/login_datasources.dart';
import 'package:information_app/app/modules/login/interactor/entities/login_credential_entity.dart';

import '../../interactor/repositories/login_repository_interface.dart';
import '../adapters/json_to_logged_user.dart';

class LoginRepository implements ILoginRepository {
  final ILoginDataSource dataSource;

  LoginRepository({required this.dataSource});

  @override
  Future<LoggedUserEntity> loginWithEmailAndPassword(
      {required LoginCredential loginCredential}) async {
    final map = await dataSource.loginWithEmailAndPassword(
      email: loginCredential.email,
      password: loginCredential.password,
    );
    return JsonToLoggedUser.fromMap(map);
  }
}
