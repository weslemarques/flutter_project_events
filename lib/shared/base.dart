import 'package:chuva_dart/shared/label.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Base{

  int? id;
  @JsonKey()
  Label? title;

  Base({this.id, this.title});

  factory Base.fromJson(Map json){
    return Base(
      id: json['id'],
      title: json['title'],
    );
  }


}