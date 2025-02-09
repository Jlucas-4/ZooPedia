import 'package:flutter/material.dart';
import 'package:zoopediaapp/classes/habitat.dart';
import 'package:zoopediaapp/main.dart';
import 'package:zoopediaapp/habitatTela.dart';

void main() {
  runApp(ListaHabitat());
}

/*
to do:
-lista de habitat's
-arrumar design do botão de voltar da tela de animais
*/

class ListaHabitat extends StatelessWidget {
  ListaHabitat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            color: const Color.fromRGBO(100, 0, 0, 0),
            child: Center(
              child: Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/MainApp');
                  },
                  child: const Icon(Icons.home),
                ),
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => Container(
            //Card do animal
            margin: const EdgeInsets.only(
              right: 120,
              top: 40,
            ),
            child: Builder(
              builder: (context) => ElevatedButton(
                onPressed: () {
                  // atribuir o valor do index clicado a uma variavel, chamando uma função pq diteramente ele n vai
                  fHabitatSelect(lHabitat[index].id);
                  //Navegação entre paginas ↴
                  Navigator.pushNamed(context, '/HabitatTela');
                  //atribuirNumeroDieta();
                  //atribuirNumeroHabito();
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
                child: Text(
                  lHabitat[index].nome,
                  style:const TextStyle(
                    // personalizar estilo da fonte do botão
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'Junge',
                  ),
                ),
              ),
            ),
          ),
          itemCount: lHabitat.length,
        ),
      ),
      routes: {
        //'/Pag2': (context) => const Pag2(),
        '/MainApp': (context) => MainApp(),
        '/HabitatTela': (context) => HabitatTela(),
      },
    );
  }
}
