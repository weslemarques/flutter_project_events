import 'package:chuva_dart/shared/base.dart';
import 'package:chuva_dart/shared/label.dart';

class Location extends Base{

  int? parent;
  String? map;

  Location(this.parent, this.map, int id, Label label ) : super(id, label);

}