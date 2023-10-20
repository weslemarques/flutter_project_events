import 'package:flutter/material.dart';

class CalendarButton extends StatelessWidget {
  const CalendarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 6),
      width: 350.0,
      height: 45.0,
      decoration: BoxDecoration(
        color: Colors.white, // Cor de fundo do switch
        borderRadius: BorderRadius.circular(
            25.0), // Borda arredondada para fazer um círculo
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 4),
            width: 50.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: const Color(0xFFC24FFE), // Cor de fundo da bolinha
              borderRadius: BorderRadius.circular(
                  20.0), // Borda arredondada para a bolinha
            ),
            child: const Center(
              child:  Icon(
                Icons.calendar_month,
                weight: 10,
                size: 25.0,
                color: Colors.black87,
              ),
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          const Text("Exibindo todas atividades", style: TextStyle(
            fontSize: 15,
          ),),
        ],
      ),
    );
  }
}

