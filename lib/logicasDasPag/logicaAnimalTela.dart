import 'package:flutter/material.dart';
import 'package:zoopediaapp/classes/animal.dart';

int numeroDaDieta = 0;
int numeroDaMovimentacao = 0;
int numeroDoHabito = 0;

void atribuirNumeroDieta() {
  if (lAnimal[animalSelect].tipoDieta == 'Carnívoro' ||
      lAnimal[animalSelect].tipoDieta == 'Carnivoro' ||
      lAnimal[animalSelect].tipoDieta == 'carnívoro' ||
      lAnimal[animalSelect].tipoDieta == 'carnivoro' ||
      lAnimal[animalSelect].tipoDieta == 'Carnívora' ||
      lAnimal[animalSelect].tipoDieta == 'Carnivora' ||
      lAnimal[animalSelect].tipoDieta == 'carnívora' ||
      lAnimal[animalSelect].tipoDieta == 'carnivora') {
    numeroDaDieta = 0;
  } else if (lAnimal[animalSelect].tipoDieta == 'Herbívoro' ||
      lAnimal[animalSelect].tipoDieta == 'herbívoro' ||
      lAnimal[animalSelect].tipoDieta == 'Herbivoro' ||
      lAnimal[animalSelect].tipoDieta == 'herbivoro' ||
      lAnimal[animalSelect].tipoDieta == 'Herbívora' ||
      lAnimal[animalSelect].tipoDieta == 'herbívora' ||
      lAnimal[animalSelect].tipoDieta == 'Herbivora' ||
      lAnimal[animalSelect].tipoDieta == 'herbivora') {
    numeroDaDieta = 1;
  } else if (lAnimal[animalSelect].tipoDieta == 'Onívoro' ||
      lAnimal[animalSelect].tipoDieta == 'Onivoro' ||
      lAnimal[animalSelect].tipoDieta == 'onívoro' ||
      lAnimal[animalSelect].tipoDieta == 'onivoro' ||
      lAnimal[animalSelect].tipoDieta == 'Onívora' ||
      lAnimal[animalSelect].tipoDieta == 'Onivora' ||
      lAnimal[animalSelect].tipoDieta == 'onívora' ||
      lAnimal[animalSelect].tipoDieta == 'onivora') {
    numeroDaDieta = 2;
  }
}

void atribuirNumeroMovimentacao() {
  if (lAnimal[animalSelect].tipoMovimentacao == 'Terrestre' ||
      lAnimal[animalSelect].tipoMovimentacao == 'terrestre') {
    numeroDaMovimentacao = 0;
  } else if (lAnimal[animalSelect].tipoMovimentacao == 'Aquático' ||
      lAnimal[animalSelect].tipoMovimentacao == 'aquático' ||
      lAnimal[animalSelect].tipoMovimentacao == 'Aquatico' ||
      lAnimal[animalSelect].tipoMovimentacao == 'aquatico') {
    numeroDaMovimentacao = 1;
  } else if (lAnimal[animalSelect].tipoMovimentacao == 'Aéreo' ||
      lAnimal[animalSelect].tipoMovimentacao == 'aéreo' ||
      lAnimal[animalSelect].tipoMovimentacao == 'Aereo' ||
      lAnimal[animalSelect].tipoMovimentacao == 'aereo') {
    numeroDaMovimentacao = 2;
  }
}

void atribuirNumeroHabito() {
  if (lAnimal[animalSelect].tipoHabito == 'Diurno' ||
      lAnimal[animalSelect].tipoHabito == 'diurno') {
    numeroDoHabito = 0;
  } else if (lAnimal[animalSelect].tipoHabito == 'Noturno' ||
      lAnimal[animalSelect].tipoHabito == 'noturno') {
    numeroDoHabito = 1;
  }
}

List<ShapeDecoration> decoracaoDieta = [
  ShapeDecoration(
    //carnivora
    color: const Color(0xFFBE3D3D),
    shape: RoundedRectangleBorder(
      side: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(50),
    ),
  ),
  ShapeDecoration(
    //hebivoro
    color: const Color(0xFF298F3C),
    shape: RoundedRectangleBorder(
      side: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(50),
    ),
  ),
  ShapeDecoration(
    //onivoro
    color: const Color(0xFF74663D),
    shape: RoundedRectangleBorder(
      side: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(50),
    ),
  ),
];

List<ShapeDecoration> decoracaoMovimentacao = [
  ShapeDecoration(
    //Terrestre
    color: const Color(0xFFB48251),
    shape: RoundedRectangleBorder(
      side: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(50),
    ),
  ),
  ShapeDecoration(
    //Aquático
    color: const Color(0xFF3E7BFF),
    shape: RoundedRectangleBorder(
      side: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(50),
    ),
  ),
  ShapeDecoration(
    //Aéreo
    color: const Color(0xFFA4D3E4),
    shape: RoundedRectangleBorder(
      side: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(50),
    ),
  ),
];

List<ShapeDecoration> decoracaoHabito = [
  ShapeDecoration(
    //Diurno
    color: const Color(0xFFEFF3DD),
    shape: RoundedRectangleBorder(
      side: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(50),
    ),
  ),
  ShapeDecoration(
    //Noturno
    color: const Color(0xFF535C73),
    shape: RoundedRectangleBorder(
      side: const BorderSide(width: 1),
      borderRadius: BorderRadius.circular(50),
    ),
  ),
];
