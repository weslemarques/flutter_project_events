import 'package:chuva_dart/data/models/event.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({required this.event, super.key});

  final Event event;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  late Event eventCard = widget.event;
  String formatarHora(DateTime? dadeFormater) {
    String date = DateFormat("hh:mm").format(dadeFormater!);
    return date;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      padding: const EdgeInsets.only(left: 5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Color(0xFFC24FFE),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${eventCard.type.title?.ptBr} de ${formatarHora(eventCard.start)} até ${formatarHora(eventCard.end)}',
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
                 Icon(
                  color: Colors.indigoAccent,
                   eventCard.isFavorite ?
                  Icons.bookmark_outlined: null,
                )
              ],
            ),
            Text(
              eventCard.title.ptBr,
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 17,
              ),
            ),
            Row(
              children: [
                ...eventCard.people.map(
                  (e) => Text(
                    '${e.name}, ',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
