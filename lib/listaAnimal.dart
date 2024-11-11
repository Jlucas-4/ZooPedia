import 'package:flutter/material.dart';
import 'package:zoopediaapp/main.dart';

void main() {
  runApp(listaAnimal());
}

class listaAnimal extends StatelessWidget {
  listaAnimal({super.key});

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
                margin: EdgeInsets.only(
                  

                ),
                
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/MainApp');
                    },
                    
                    child: const Text('Animais'),
                    ),
              )
            ],
          ),
      ),
      routes: {
        //'/Pag2': (context) => const Pag2(),
        '/MainApp': (context) => MainApp(),
      },
    );
  }
}