import 'package:flutter/material.dart';
import 'package:zoopediaapp/classes/animal.dart';
import 'package:zoopediaapp/main.dart';
import 'package:zoopediaapp/listaAnimal.dart';
import 'dart:async';

void main() {
  runApp(const AnimalTela());
}

class AnimalTela extends StatefulWidget {
  const AnimalTela({super.key});

  @override
  State<AnimalTela> createState() => AnimalWidget();
}

class AnimalWidget extends State<AnimalTela> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Center(
                //nome do animal
                child: Container(
                    width: 241,
                    height: 49,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF008585),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Center(
                        child: Text(lAnimal[animalSelect].nome) //decorar depois
                        ))),
            Container(
              //imagem do animal
              margin: const EdgeInsets.only(top: 35, left: 29, right: 29),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  lAnimal[animalSelect].adultoImg,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    //dieta
                    margin: const EdgeInsets.only(left: 10, right: 5, top: 30),
                    width: 200,
                    height: 49,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF008585),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Center(
                        child: Text(
                            lAnimal[animalSelect].tipoDieta) //decorar depois
                        )),
                Container(
                    //habito
                    margin: const EdgeInsets.only(left: 5, right: 10, top: 30),
                    width: 200,
                    height: 49,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF008585),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Center(
                        child: Text(
                            lAnimal[animalSelect].tipoHabito) //decorar depois
                        )),
              ],
            )),
            Center(
              child: Container(
                  //movimentação
                  margin: const EdgeInsets.only(top: 8),
                  width: 200,
                  height: 49,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF008585),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Center(
                      child: Text(lAnimal[animalSelect]
                          .tipoMovimentacao) //decorar depois
                      )),
            )
          ],
        ),
        appBar: AppBar(
          leading: Builder(builder: (context) =>  
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 5, 112, 19),
                fixedSize: const Size.fromHeight(80),
                shape: const RoundedRectangleBorder(
                    //configurando formato do botão
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  bottomLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomRight: Radius.circular(90),
                ))),
            onPressed: () {
              Navigator.pushNamed(context, '/ListaAnimal');
              animalSelect =
                  0; //voltar o valor para 0 para evitar encaminhamento de dados errado
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),)
        ),
      ),
      routes: {
        //'/Pag2': (context) => const Pag2(),
        '/MainApp': (context) => MainApp(),
        '/ListaAnimal': (context) => ListaAnimal(),
      },
    );
  }
}
