import '../../../../core/auth/domain/entities/logged_user_entity.dart';
import '../entities/login_credential_entity.dart';

abstract class ILoginRepository {
  Future<LoggedUserEntity> loginWithEmailAndPassword(
      {required LoginCredential loginCredential});
}
