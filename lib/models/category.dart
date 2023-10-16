import 'package:chuva_dart/shared/base.dart';

class Category extends Base{


  String? color;
  String? backgroundColor;

  Category(this.color, this.backgroundColor, id, label) : super(id, label);
}