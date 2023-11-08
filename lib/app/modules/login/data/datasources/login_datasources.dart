import 'dart:convert';

import '../../../../core/shared/services/remote/http_client_service_interface.dart';

sealed class ILoginDataSource {
  Future<Map<String, dynamic>> loginWithEmailAndPassword(
      {required String email, required String password});
}

class LoginDataSource implements ILoginDataSource {
  final IHttpClientService client;

  LoginDataSource({
    required this.client,
  });

  @override
  Future<Map<String, dynamic>> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final uri = Uri.parse("loginWithEmailAndPassword");
    final body = jsonEncode({"email": email, "password": password});
    final response = await client.post(uri, body: body);
    final result = jsonDecode(response.body);
    return result;
  }
}
