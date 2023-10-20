import 'package:chuva_dart/data/models/category.dart';
import 'package:chuva_dart/data/models/location.dart';
import 'package:chuva_dart/data/models/person.dart';
import 'package:chuva_dart/data/models/shared/base.dart';
import 'package:chuva_dart/data/models/shared/label.dart';
import 'package:json_annotation/json_annotation.dart';


@JsonSerializable()
class Event {
  int id;
  int? changed; //// 1696954105,
  DateTime? start; // "2023-11-26T07:00:00-03:00",
  DateTime? end; //": "2023-11-26T08:00:00-03:00",
  Label title;
  Label description;
  Category category;
  List<People> people;
  List<Location>? locations;
  int? status;
  Base type;
  int? weight;
  String? addons;
  int? parent;
  String? event;
  bool isFavorite = false;

  Event({
    required this.id,
    this.changed,
    required this.start,
    required this.end,
    required this.title,
    required this.description,
    required this.category,
    this.locations,
    this.status,
    this.weight,
    this.addons,
    this.parent,
    this.event,
    required this.people,
    required this.type,
  });

  factory Event.fromJson(Map json) {
    return Event(
      changed: json['changed'],
      start: DateTime.tryParse(json['start'])?.subtract(Duration(hours: 3)),
      id: json['id'],
      end:  DateTime.tryParse(json['end']) ,
      title: Label.fromJson(json['title']),
      description: Label.fromJson(json['description']),
      category: Category.fromJson(json['category']),
      status: json['status'],
      weight: json['weight'],
      addons: json['addons'],
      parent: json['parent'],
      event: json['event'],
      locations: (json['locations'] as List<dynamic>).map((e) => Location.fromJson(e)).toList(),
      people: (json['people'] as List<dynamic>).map((e) => People.fromJson(e)).toList(),
      type: Base.fromJson(json['type']),
    );
  }

  @override
  String toString() {
    return 'Event{id: $id, changed: $changed, start: $start, end: $end, title: $title, description: $description, category: $category, people: $people, locations: $locations, status: $status, weight: $weight, addons: $addons, parent: $parent, event: $event}';
  }
}
