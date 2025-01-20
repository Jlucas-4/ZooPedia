import 'package:flutter/material.dart';
import 'package:zoopediaapp/classes/habitat.dart';
import 'package:zoopediaapp/logicasDasPag/logicaHabitatTela.dart';
import 'package:zoopediaapp/listaHabitat.dart';

void main() {
  runApp(HabitatTela());
}

class HabitatTela extends StatelessWidget {
  HabitatTela({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFF4B7D7D), Color(0xFF0C2C2C)],
            ),
          ),
          child: ListView(
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
                          child:
                              Text(lHabitat[0].nome) //decorar depois
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
                    lHabitat[0].imgHabitat1,
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
                      //umidade
                      margin:
                          const EdgeInsets.only(left: 10, right: 5, top: 30),
                      width: 200,
                      height: 49,
                      decoration: decoracaoUmidade[numeroDaUmidade],
                      child: Center(
                          child: Text(
                              lHabitat[0].tipoUmidade) //decorar depois
                          )),
                  Container(
                      //localidade
                      margin:
                          const EdgeInsets.only(left: 5, right: 10, top: 30),
                      width: 200,
                      height: 49,
                      decoration: decoracaoLocalidade[numeroDaLocalidade],
                      child: Center(
                          child: Text(
                              lHabitat[0].tipoLocalidade) //decorar depois
                          )),
                ],
              )),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context) => ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 5, 112, 19),
                  fixedSize: const Size.fromHeight(80),
                  shape: const RoundedRectangleBorder(
                      //configurando formato do botão
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                    bottomRight: Radius.circular(50),
                  ))),
              onPressed: () {
                Navigator.pushNamed(context, '/ListaHabitat');
                //animalSelect = 0; 
                //voltar o valor para 0 para evitar encaminhamento de dados errado
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          actions: [
            Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/MainApp');
                    //animalSelect = 0; 
                    //voltar o valor para 0 para evitar encaminhamento de dados errado
                  },
                  icon: const Icon(
                    Icons.home,
                    color: Colors.black,
                    size: 45,
                  )),
            )
          ],
        ),
      ),
      routes: {
        '/ListaHabitat': (context) => ListaHabitat(),
      },
    );
  }
}