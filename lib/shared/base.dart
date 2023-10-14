import 'package:chuva_dart/shared/label.dart';
import 'package:flutter/cupertino.dart';

class Base<T>{
  int? _id;
  Label? _label;
  Map<String,String>? campo1;
  Map<String,T>? campo2;


  int? get id => _id;

  set id(int? value) {
    _id = value;
  }

  Label? get label => _label;

  set label(Label? value) {
    _label = value;
  }
}