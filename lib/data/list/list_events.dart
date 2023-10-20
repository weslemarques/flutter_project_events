import 'package:chuva_dart/data/models/event.dart';
import 'package:chuva_dart/data/repositories/event_repository.dart';
import 'package:flutter/material.dart';

class ListEvents {
  final IEventRepository repository;

  ListEvents({required this.repository});

  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);

  final ValueNotifier<List<Event>> state = ValueNotifier<List<Event>>([]);

  final ValueNotifier<String> erro = ValueNotifier<String>('');

  Future getEvents() async {
    isLoading.value = true;
      final result = await repository.getEvents();
      state.value = result;


    isLoading.value = false;
  }
}
