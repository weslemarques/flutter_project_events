import 'dart:convert';

import 'package:chuva_dart/data/dio/dio_client.dart';
import 'package:chuva_dart/data/models/event.dart';
import 'package:dio/dio.dart';
abstract class IEventRepository{

  Future<List<Event>> getEvents();
}
class EventRepository implements IEventRepository {
  List<Event> listEvents = [];

  final IDioClient client;

  EventRepository({required this.client});

  @override
  Future<List<Event>> getEvents() async {
    Response response = await client.get(url: 'https://raw.githubusercontent.com/chuva-inc/exercicios-2023/master/dart/assets/activities-1.json');

      String data = response.data;
      final jsonData = jsonDecode(data);
      final listEven = jsonData["data"];
      listEvents = listEven.map<Event>((e) => Event.fromJson(e as Map)).toList();
      return listEven.map<Event>((e) => Event.fromJson(e as Map)).toList();
    }

  List<Event> getEventByPersonId(peopleId) {
    getEvents().then((value) => listEvents = value);
    List<Event> list = [];
    listEvents.forEach((event) {
      event.people?.forEach((p) => {
        if (p.id == peopleId)
            list.add(event),
      });
    });
    return list;
  }
}
