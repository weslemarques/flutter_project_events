
import 'package:chuva_dart/data/models/shared/base.dart';
import 'package:chuva_dart/data/models/shared/label.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class People {
  String? title;
  int? id;

  String? name;
  String? institution;
  Label? bio;
  String? picture;
  int? weight;
  Base? role;
  String? hash;

  People(
      {this.title,
      this.id,
      this.name,
      this.institution,
      this.bio,
      this.picture,
      this.weight,
      this.role,
      this.hash});

  factory People.fromJson(Map json) {
    return People(
      title: json['title'],
      id: json['id'],
      name: json['name'],
      institution: json['institution'],
      bio: json['bio'] != null ? Label.fromJson(json['bio']) : null,
      picture: json['picture'],
      weight: json['weight'],
      hash: json['hash'],
      role: json['role'] != null ? Base.fromJson(json['role']) : null,
    );
  }

  @override
  String toString() {
    return 'People{title: $title, id: $id, name: $name, institution: $institution, bio: $bio, picture: $picture, weight: $weight, role: $role, hash: $hash}';
  }
}
