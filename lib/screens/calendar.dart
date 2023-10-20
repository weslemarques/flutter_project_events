import 'package:chuva_dart/data/dio/dio_client.dart';
import 'package:chuva_dart/data/list/list_events.dart';
import 'package:chuva_dart/data/repositories/event_repository.dart';
import 'package:chuva_dart/widgets/calendar_button.dart';
import 'package:chuva_dart/widgets/card_widget.dart';
import 'package:chuva_dart/widgets/date_button.dart';
import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final ListEvents list = ListEvents(
    repository: EventRepository(
      client: DioClient(),
    ),
  );
  DateTime _currentDate = DateTime(2023, 11, 26);
  bool _clicked = false;

  void _changeDate(DateTime newDate) {
    setState(() {
      _currentDate = newDate;
    });
  }

  @override
  void initState() {
    super.initState();
    list.getEvents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        leadingWidth: 3.9,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Container(
          margin: const EdgeInsets.only(top: 40),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Chuva ❤️ Flutter',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Programação',
                style: TextStyle(color: Colors.white),
              ),
              CalendarButton(),
            ],
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                    height: 40,
                    child: Column(
                      children: [Text("Nov"), Text(("2023"))],
                    )),
                DateButton(26),

              ],
            ),
          ),
          AnimatedBuilder(
            animation: Listenable.merge([
              list.isLoading,
              list.erro,
              list.state,
            ]),
            builder: (context, child) {
              if (list.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return Expanded(
                  child: SizedBox(
                      child: ListView(
                    children: [

                      ...list.state.value.map((e) => CardWidget(event: e)),
                    ],
                  )),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
