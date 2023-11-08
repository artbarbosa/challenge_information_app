// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:information_app/app/modules/informations/data/adapters/information_to_json.dart';
import 'package:information_app/app/modules/informations/data/adapters/json_to_information.dart';

import '../../interactor/entities/information_entity.dart';
import '../../interactor/repositories/information_repository_interface.dart';
import '../datasources/local/information_local_datasource.dart';
import '../datasources/remote/information_remote_datasource.dart';

class InformationRepository implements IInformationRepository {
  final IInformationLocalDataSource localDataSource;
  final IInformationRemoteDataSource remoteDataSource;

  InformationRepository({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<List<InformationEntity>> getListInformation() async {
    List<String> list = await remoteDataSource.getListInformation();
    if (list.isEmpty) {
      list = await localDataSource.getListInformation();
    }
    return list.map((e) => JsonToInformation.fromMap(jsonDecode(e))).toList();
  }

  @override
  Future<void> saveListInformation(
      List<InformationEntity> listInformation) async {
    final List<String> list = [];
    for (var element in listInformation) {
      final map = InformationToJson.toMap(element);
      list.add(jsonEncode(map));
    }
    if (list.isNotEmpty) {
      await localDataSource.saveListInformation(list: list);
      await remoteDataSource.saveListInformation(list: list);
    }
  }
}
