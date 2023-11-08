import '../../../../core/auth/domain/entities/logged_user_entity.dart';

class JsonToLoggedUser {
  static LoggedUserEntity fromMap(Map<String, dynamic> map) {
    return LoggedUserEntity(
      name: map['name'] as String,
      email: map['email'] as String,
    );
  }
}
