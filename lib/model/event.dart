import 'dart:ffi';

import 'package:chuva_dart/shared/base.dart';
import 'package:chuva_dart/shared/label.dart';

class Event{
  int? id;
  Long? changed; // 1696954105,
  DateTime? start; // "2023-11-26T07:00:00-03:00",
  DateTime? end;  //": "2023-11-26T08:00:00-03:00",
  Label? title;
  Label? description;
  Base<String>? category;
  Base<Int>? locations;
}
