import 'package:flutter/material.dart';
import 'package:zoopediaapp/listaAnimal.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

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
                  Icons.home, size: 222,
                ),
              ),

              Container( //Botão 1
                margin: const EdgeInsets.only(
                  right: 100,
                  top: 80,
                ),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/listaAnimal'); //Navegação entre paginas
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      fixedSize: const Size.fromHeight(100),
                      shape: const RoundedRectangleBorder( //configurando formato do botão
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          bottomLeft: Radius.circular(0),
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        )
                      )
                    ),
                    child: const Text('Animais', 
                      style: 
                        TextStyle(
                          // personalizar estilo da fonte do botão
                          fontSize: 38,
                        ),),
                    ),
              )
              
            ],
          ),
      ),
      routes: {
        '/listaAnimal': (context) => listaAnimal(),
      },
    );
  }
}
