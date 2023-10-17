import 'package:chuva_dart/shared/base.dart';
import 'package:chuva_dart/shared/label.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Location{

  int? parent;
  String? map;

  int? id;
  Label? title;

  Location({this.parent, this.map, this.id, this.title});

  factory Location.fromJson(Map json){
    return Location(
      parent: json['parent'],
      map: json['map'],
      id: json['id'],
      title: json['title'] != null ? Label.fromJson(json['title']) : null,
    );
  }

  static listOfLocation(List<dynamic> json) {
    List<Location> locations = <Location>[];
    json.forEach((l) => locations!.add(Location.fromJson(l)));
    return locations;
  }

  @override
  String toString() {
    return 'Location{parent: $parent, map: $map, id: $id, title: $title}';
  }
}
