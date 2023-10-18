import 'dart:ffi';

import 'package:chuva_dart/models/category.dart';
import 'package:chuva_dart/models/location.dart';
import 'package:chuva_dart/models/people.dart';
import 'package:chuva_dart/shared/label.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Event {
  int? id;
  int? changed; //// 1696954105,
  DateTime? start; // "2023-11-26T07:00:00-03:00",
  DateTime? end; //": "2023-11-26T08:00:00-03:00",
  Label? title;
  Label? description;
  Category? category;
  List<People>? people;
  List<Location>? locations;
  int? status;
  int? weight;
  String? addons;
  String? parent;
  String? event;

  Event({
    this.id,
    this.changed,
    this.start,
    this.end,
    this.title,
    this.description,
    this.category,
    this.locations,
    this.status,
    this.weight,
    this.addons,
    this.parent,
    this.event,
    this.people,
  });

  factory Event.fromJson(Map json) {
    return Event(
      changed: json['changed'],
      start: DateTime.tryParse(json['start']),
      id: json['id'],
      end: DateTime.tryParse(json['end']) ,
      title: json['title'] != null ? Label.fromJson(json['title']) : null,
      description: json['description'] != null ? Label.fromJson(json['description']) : null,
      category: json['category'] != null ? Category.fromJson(json['category']): null,
      status: json['status'],
      weight: json['weight'],
      addons: json['addons'],
      parent: json['parent'],
      event: json['event'],
      locations: (json['locations'] as List<dynamic>).map((e) => Location.fromJson(e)).toList(),
      people: (json['people'] as List<dynamic>).map((e) => People.fromJson(e)).toList(),
    );
  }

  @override
  String toString() {
    return 'Event{id: $id, changed: $changed, start: $start, end: $end, title: $title, description: $description, category: $category, people: $people, locations: $locations, status: $status, weight: $weight, addons: $addons, parent: $parent, event: $event}';
  }
}
