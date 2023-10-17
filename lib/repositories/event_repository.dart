import 'dart:convert';

import 'package:chuva_dart/models/event.dart';
import 'package:dio/dio.dart';

class EventRepository{
  var listEvents = [];
  final dio = Dio();

   Future<List<Event>> getAll() async {
    String url = 'https://raw.githubusercontent.com/chuva-inc/exercicios-2023/master/dart/assets/activities-1.json';

    Response response = await dio.get(url);
    String data = response.data;
    final jsonData = jsonDecode(data);
    listEvents = jsonData["data"];

    return listEvents.map((e) => Event.fromJson(e)).toList();
  }

}
