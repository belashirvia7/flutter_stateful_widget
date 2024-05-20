import 'package:flutter/material.dart';
import 'package:flutter_stateful_widget/widgets/text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Flutter - Bela Shirvia'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TeksUtama(
            index: index,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Random',
        onPressed: incrementIndex, // Use the function directly
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
