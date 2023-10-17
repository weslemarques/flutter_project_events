import 'package:chuva_dart/shared/base.dart';
import 'package:chuva_dart/shared/label.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Category{

  String? color;
  @JsonValue('background-color')
  String? backgroundColor;

  int? id;
  Label? title;

  Category({this.color, this.backgroundColor, this.id, this.title});

  factory Category.fromJson(Map json){
    return Category(
      color: json['color'],
      backgroundColor: json['background-color'],
      id: json['id'],
      title: json['title'] != null ? Label.fromJson(json['title']) : null,
    );
  }

  @override
  String toString() {
    return 'Category{color: $color, backgroundColor: $backgroundColor, id: $id, title: $title}';
  }

}