import '../../interactor/entities/information_entity.dart';

class JsonToInformation {
  static InformationEntity fromMap(Map<String, dynamic> map) {
    return InformationEntity(
      uuid: map['uuid'] as String,
      text: map['text'] as String,
    );
  }
}
