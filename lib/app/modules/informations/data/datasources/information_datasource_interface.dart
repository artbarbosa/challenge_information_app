abstract class IInformationDataSource {
  Future<List<String>> getListInformation();
  Future<bool> saveListInformation({
    required List<String> list,
  });
}
