class clHabitat {
  final int id;
  final String nome;
  final String imgHabitat1;
  final String imgHabitat2;
  final String imgHabitat3;
  final String tipoUmidade;
  final String tipoLocalidade;
  final String descricao;

  clHabitat(this.id, this.nome, this.imgHabitat1, this.imgHabitat2,
      this.imgHabitat3, this.tipoUmidade, this.tipoLocalidade, this.descricao);

  void trocarImg() {}

  void trocarFundo() {}
}

int habitatSelect = 0;

void fHabitatSelect(indexHabitat) {
  habitatSelect = indexHabitat - 1;
  // aqui obtem o index/posição do objeto no array
}

List<clHabitat> lHabitat = [
  clHabitat(
      1,
      'Pantanal',
      'imgHabitat1',
      'imgHabitat2',
      'imgHabitat3',
      'Umido',
      'Floresta',
      'O Pantanal é a maior planície alagável do mundo, localizado principalmente no Brasil, com partes no Paraguai e na Bolívia. É uma região rica em biodiversidade, composta por áreas alagadas, savanas, florestas tropicais e campos. Durante a estação chuvosa, grande parte do Pantanal fica submersa, formando um mosaico de lagoas, rios e áreas úmidas que atraem uma grande variedade de animais, como capivaras, jacarés e peixes, fundamentais para a dieta de animais como a onça-pintada. O Pantanal também oferece água em abundância e uma rica vegetação, sendo um dos ecossistemas mais importantes para a conservação dessa espécie ameaçada.'),
];
