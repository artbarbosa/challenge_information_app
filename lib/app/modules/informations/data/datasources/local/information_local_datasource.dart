import '../../../../../core/shared/consts/local_keys_const.dart';
import '../../../../../core/shared/services/local/local_storage_service.dart';
import '../information_datasource_interface.dart';

sealed class IInformationLocalDataSource implements IInformationDataSource {
  @override
  Future<List<String>> getListInformation();
  @override
  Future<bool> saveListInformation({
    required List<String> list,
  });
}

class InformationLocalDataSource implements IInformationLocalDataSource {
  final ILocalStorageService localStorageService;

  InformationLocalDataSource({
    required this.localStorageService,
  });

  @override
  Future<List<String>> getListInformation() async {
    return await localStorageService
            .getStringList(LocalKeysConst.listInformations) ??
        [];
  }

  @override
  Future<bool> saveListInformation({required List<String> list}) async {
    try {
      return await localStorageService.setStringList(
          LocalKeysConst.listInformations, list);
    } catch (e) {
      rethrow;
    }
  }
}
