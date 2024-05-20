import 'package:flutter/material.dart';

class TeksUtama extends StatefulWidget {
  final int index;
  const TeksUtama({
    super.key,
    required this.index,
  });

  @override
  State<TeksUtama> createState() => _TeksUtamaState();
}

class _TeksUtamaState extends State<TeksUtama> {
  var listNama = [
    'Bela Shirvia',
    'Mochamad Bagus Pradika',
    'Arif Nur Fadillah',
    'Fuad Syururi',
    'Evan Fikri Aditya',
  ];
  var listWarna = [
    Colors.red,
    Colors.purple,
    Colors.teal,
    Colors.lime,
    Colors.indigo,
    Colors.deepPurple,
    Colors.cyan,
    Colors.blue,
    Colors.yellow
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Apa Kabar ?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Text(
            listNama[widget.index % listNama.length],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: listWarna[widget.index % listWarna.length],
            ),
          ),
        ],
      ),
    );
  }
}
