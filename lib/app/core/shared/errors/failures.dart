abstract class Failure {
  String message;
  int? code;

  Failure({
    required this.message,
    this.code,
  });
}

class ApiFailure extends Failure {
  ApiFailure({
    required message,
    required code,
  }) : super(
          message: message,
          code: code,
        );
}

class GenericFailure extends Failure {
  GenericFailure({
    required message,
  }) : super(
          message: message,
        );
}

class ArgumentFailure extends Failure {
  ArgumentFailure({
    required message,
  }) : super(
          message: message,
        );
}
