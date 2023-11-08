import 'package:equatable/equatable.dart';

class InformationEntity extends Equatable {
  final String uuid;
  final String text;

  const InformationEntity({
    required this.uuid,
    required this.text,
  });

  @override
  List<Object> get props => [uuid, text];

  InformationEntity copyWith({
    String? uuid,
    String? text,
  }) {
    return InformationEntity(
      uuid: uuid ?? this.uuid,
      text: text ?? this.text,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
      'text': text,
    };
  }

  factory InformationEntity.fromMap(Map<String, dynamic> map) {
    return InformationEntity(
      uuid: map['uuid'] as String,
      text: map['text'] as String,
    );
  }
}
