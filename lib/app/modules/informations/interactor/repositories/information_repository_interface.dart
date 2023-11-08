import '../entities/information_entity.dart';

abstract class IInformationRepository {
  Future<List<InformationEntity>> getListInformation();
  Future<void> saveListInformation(List<InformationEntity> listInformation);
}
