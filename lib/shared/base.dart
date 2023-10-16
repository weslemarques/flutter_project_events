import 'package:chuva_dart/shared/label.dart';

class Base{


  int? _id;
  Label? _label;


  int? get id => _id;

  set id(int? value) {
    _id = value;
  }

  Label? get label => _label;

  set label(Label? value) {
    _label = value;
  }

  Base(this._id, this._label);
}