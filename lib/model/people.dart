import 'package:chuva_dart/shared/role.dart';
import 'package:chuva_dart/shared/label.dart';

class People{
  String? _title;
  int? id;

  String? name;
  String? institution;

  Label? bio;
  String? picture;
  int? weight;
  Role? role;
  String? hash;
  String? get title => _title;

  set title(String? value) {
    _title = value;
  }
}
