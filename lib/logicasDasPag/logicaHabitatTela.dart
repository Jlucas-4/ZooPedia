import 'package:flutter/material.dart';
import 'package:zoopediaapp/classes/habitat.dart';

int numeroDaUmidade = 0;
int numeroDaLocalidade = 0;

void atribuirNumeroDaUmidade() {
  if (lHabitat[habitatSelect].tipoUmidade == 'Umido' ||
      lHabitat[habitatSelect].tipoUmidade == 'umido') {
    numeroDaUmidade = 0;
  } else if (lHabitat[habitatSelect].tipoUmidade == 'Seco' ||
      lHabitat[habitatSelect].tipoUmidade == 'seco') {
    numeroDaUmidade = 1;
  }
}

List<ShapeDecoration> decoracaoUmidade = [
  ShapeDecoration(
    //Umido
    color: const Color(0xFF407EAB),
    shape: RoundedRectangleBorder(
      side: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(50),
    ),
  ),
  ShapeDecoration(
    //Seco
    color: const Color(0xFFD7B379),
    shape: RoundedRectangleBorder(
      side: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(50),
    ),
  ),
];

void atribuirNumeroDaLocalidade() {
  if (lHabitat[habitatSelect].tipoLocalidade == 'Floresta' ||
      lHabitat[habitatSelect].tipoLocalidade == 'floresta') {
    numeroDaLocalidade = 0;
  } else if (lHabitat[habitatSelect].tipoLocalidade == 'Deserto' ||
      lHabitat[habitatSelect].tipoLocalidade == 'deserto') {
    numeroDaLocalidade = 1;
  } else if (lHabitat[habitatSelect].tipoLocalidade == 'Planice' ||
      lHabitat[habitatSelect].tipoLocalidade == 'planice') {
    numeroDaLocalidade = 2;
  } else if (lHabitat[habitatSelect].tipoLocalidade == 'Oceano' ||
      lHabitat[habitatSelect].tipoLocalidade == 'oceano') {
    numeroDaLocalidade = 3;
  } else if (lHabitat[habitatSelect].tipoLocalidade == 'Mar' ||
      lHabitat[habitatSelect].tipoLocalidade == 'mar') {
    numeroDaLocalidade = 4;
  } else if (lHabitat[habitatSelect].tipoLocalidade == 'Rio' ||
      lHabitat[habitatSelect].tipoLocalidade == 'rio') {
    numeroDaLocalidade = 5;
  }
}

List<ShapeDecoration> decoracaoLocalidade = [
  ShapeDecoration(
    //Floresta
    color: const Color(0xFF15632C),
    shape: RoundedRectangleBorder(
      side: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(50),
    ),
  ),
  ShapeDecoration(
    //Deserto
    color: const Color(0xFFC8B04C),
    shape: RoundedRectangleBorder(
      side: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(50),
    ),
  ),
  ShapeDecoration(
    //Planice
    color: const Color(0xFFB4884C),
    shape: RoundedRectangleBorder(
      side: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(50),
    ),
  ),
  ShapeDecoration(
    //Oceano
    color: const Color(0xFF3B48D2),
    shape: RoundedRectangleBorder(
      side: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(50),
    ),
  ),
  ShapeDecoration(
    //Mar
    color: const Color(0xFF2E74B5),
    shape: RoundedRectangleBorder(
      side: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(50),
    ),
  ),
  ShapeDecoration(
    //Rio
    color: const Color(0xFF45B2D0),
    shape: RoundedRectangleBorder(
      side: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(50),
    ),
  ),
];