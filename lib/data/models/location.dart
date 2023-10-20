
import 'package:chuva_dart/data/models/shared/base.dart';
import 'package:chuva_dart/data/models/shared/label.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Location extends Base{

  int? parent;
  String? map;


  Location({this.parent, this.map, id, title}):super(id:id,title:title);

  factory Location.fromJson(Map json){
    return Location(
      parent: json['parent'],
      map: json['map'],
      id: json['id'],
      title: json['title'] != null ? Label.fromJson(json['title']) : null,
    );
  }

  @override
  String toString() {
    return 'Location{parent: $parent, map: $map, id: $id, title: $title}';
  }
}
