import 'package:json_annotation/json_annotation.dart';
import 'package:chuva_dart/data/models/shared/label.dart';

@JsonSerializable()
class Base{

  int? id;
  @JsonKey()
  Label? title;

  Base({this.id, this.title});

  factory Base.fromJson(Map json){
    return Base(
      id: json['id'],
      title: json['title'] != null ? Label.fromJson(json['title']) : null,
    );
  }


}