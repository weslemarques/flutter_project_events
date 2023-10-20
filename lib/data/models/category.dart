import 'package:chuva_dart/data/models/shared/base.dart';
import 'package:chuva_dart/data/models/shared/label.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Category extends Base{

  String? color;
  @JsonValue('background-color')
  String? backgroundColor;

  Category({this.color, this.backgroundColor, id, title}):super(id: id,title: title);

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