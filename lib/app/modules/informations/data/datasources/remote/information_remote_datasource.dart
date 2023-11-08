import 'dart:convert';

import '../../../../../core/shared/services/remote/http_client_service_interface.dart';
import '../information_datasource_interface.dart';

sealed class IInformationRemoteDataSource implements IInformationDataSource {
  @override
  Future<List<String>> getListInformation();
  @override
  Future<bool> saveListInformation({
    required List<String> list,
  });
}

class InformationRemoteDataSource implements IInformationRemoteDataSource {
  final IHttpClientService client;

  InformationRemoteDataSource({
    required this.client,
  });

  @override
  Future<List<String>> getListInformation() async {
    final uri = Uri.parse("getListInformation");
    final response = await client.get(uri);
    final result = jsonDecode(response.body) as List;
    return result.map((e) => e.toString()).toList();
  }

  @override
  Future<bool> saveListInformation({required List<String> list}) async {
    final uri = Uri.parse("saveListInformation");
    final response = await client.get(uri);
    final result = jsonDecode(response.body);
    return result as bool;
  }
}
