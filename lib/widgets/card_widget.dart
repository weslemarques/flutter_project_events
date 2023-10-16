import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CardWidget extends StatelessWidget {
  String type = 'Apresentação de Pôster';
  DateTime start = DateTime.now();
  DateTime end = DateTime.now();

  String title = "Astrofísica Relativista: Explorando as Previsões de Einstein";
  List<String> peoples = ["Neil deGrasse Tyson", "Stephen William Hawking"];

  CardWidget({super.key});

  String formatarHora(DateTime dadeFormater) {
    String date = DateFormat("hh:mm").format(dadeFormater);
    return date;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.only(left: 5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.purple,
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
        padding:EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$type de ${formatarHora(start)} até ${formatarHora(end)}',
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
                 Icon(
                   color: Colors.blueGrey,
                  Icons.bookmark_outlined,
                )
              ],
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15.5,
                  fontFamily: 'Cupertino'),
            ),
            Text(
              '${peoples[0]}, ${peoples[1]}',
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
