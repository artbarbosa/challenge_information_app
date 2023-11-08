import 'package:equatable/equatable.dart';

class LoggedUserEntity extends Equatable {
  final String email;
  final String name;

  const LoggedUserEntity({required this.email, required this.name});

  @override
  List<Object> get props => [email, name];
}
