import 'package:flutter/material.dart';

void main() {
  runApp(ListaHabitat());
}

class ListaHabitat extends StatelessWidget {
  ListaHabitat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              child: const Icon(
                Icons.home,
              ),
            ),
            Container(
              margin: EdgeInsets.only(),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Pag2');
                },
                child: const Text('Habitats'),
              ),
            )
          ],
        ),
      ),
      routes: {
        //'/Pag2': (context) => const Pag2(),
      },
    );
  }
}
