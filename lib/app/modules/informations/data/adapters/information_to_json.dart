import '../../interactor/entities/information_entity.dart';

class InformationToJson {
  static Map<String, dynamic> toMap(InformationEntity informationEntity) {
    return <String, dynamic>{
      'uuid': informationEntity.uuid,
      'text': informationEntity.text,
    };
  }
}
