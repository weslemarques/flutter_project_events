import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Label{
  @JsonKey(name:"pt-br")
  String ptBr;

  Label({required this.ptBr});

  factory Label.fromJson(Map json){
    return Label(
      ptBr: json['pt-br'] ?? "",
    );
  }

  @override
  String toString() {
    return 'Label{ptBr: $ptBr}';
  }
}
