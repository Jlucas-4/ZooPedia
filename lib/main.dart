import 'package:flutter/material.dart';
import 'package:zoopediaapp/listaAnimal.dart';
import 'package:zoopediaapp/listaHabitat.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:const Color(0xFF2F4F4F),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              child: Image.asset( // Imagem da logo
                'img/telaInicial/zoopedia_logo.png',
                width: 230,
                height: 230,
              ),
            ),

            Center(
              child: 
              Container(
                margin:const EdgeInsets.only(
                  top: 25,
                  bottom: 20,
                ),
                child: const Text(
                  'Sua Enciclopédia da Vida Selvagem!',
                  style: TextStyle(
                    fontFamily: 'Junge',
                    fontSize: 20, 
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            

            Container(
              //Botão 1
              margin: const EdgeInsets.only(
                right: 120,
                top: 70,
              ),
              child: Builder(builder: (context) => ElevatedButton(
                onPressed: () {//Navegação entre paginas ↴
                  Navigator.pushNamed(
                    context, '/ListaAnimal');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6C553F),
                    fixedSize: const Size.fromHeight(80),
                    shape: const RoundedRectangleBorder(
                        //configurando formato do botão
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                      topRight: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ))),
                child: const Text(
                  'Animais',
                  style: TextStyle(
                    // personalizar estilo da fonte do botão
                    fontSize: 45,
                    color: Colors.white,
                    fontFamily: 'Junge',
                  ),
                ),
              ),
            ),
          ),

          Container(
              //Botão 2
              margin: const EdgeInsets.only(
                left: 120,
                top: 40,
              ),
              child: Builder(builder: (context) => ElevatedButton(
                onPressed: () {//Navegação entre paginas ↴
                  Navigator.pushNamed(
                    context, '/ListaHabitat');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor:const Color.fromARGB(100,56, 105, 46),
                    fixedSize: const Size.fromHeight(80),
                    shape: const RoundedRectangleBorder(
                        //configurando formato do botão
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ))),
                child: const Text(
                  'Habitats',
                  style: TextStyle(
                    // personalizar estilo da fonte do botão
                    fontSize: 45,
                    color: Colors.white,
                    fontFamily: 'Junge',
                  ),
                ),
              ),
            ),
          ),

            Container(
              //Botão 3
              margin: const EdgeInsets.only(
                right: 120,
                top: 40,
              ),
              child: Builder(builder: (context) => ElevatedButton(
                onPressed: () {//Navegação entre paginas ↴
                  Navigator.pushNamed(
                    context, '/ListaAnimal');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor:const Color.fromARGB(100, 47,79,59),
                    fixedSize: const Size.fromHeight(80),
                    shape: const RoundedRectangleBorder(
                        //configurando formato do botão
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                      topRight: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ))),
                child: const Text(
                  'Sobre nós',
                  style: TextStyle(
                    // personalizar estilo da fonte do botão
                    fontSize: 45,
                    color: Colors.white,
                    fontFamily: 'Junge',
                  ),
                ),
              ),
            ),
          ),


          ],
        ),
        bottomNavigationBar: const BottomAppBar( //footer do app
            height: 40,
            color: Color(0xFF2F4F4F),
            child: Center(
              child:Text(
                '© 2024 - Zoopedia',
                style: TextStyle(
                  fontSize: 10,
                ),
              ) ,
            ),
        ),
      ),
      routes: { //rotas de navegação do app (ao menos da pág inicial)
        '/ListaAnimal': (context) => ListaAnimal(),
        '/ListaHabitat': (context) => ListaHabitat(),
      },
    );
  }
}
