import "package:com_nicodevelop_dotmessenger/exceptions/abstract_exception.dart";

class AuthenticationException implements AbstractException {
  @override
  final String message;
  @override
  final String code;

  const AuthenticationException(
    this.message,
    this.code,
  );
}
