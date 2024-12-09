class clAnimal {
  final int id;
  final String nome;
  final String nomeCientifico;
  final String adultoImg;
  final String filhoteImg;
  final String tipoDieta;
  final String tipoMovimentacao;
  final String tipoHabito;
  final String pesoMedio;
  final int expVidaMedia;
  final String classificacao;
  final String habitat;
  final String descricao;
  final String somAnimal;

  clAnimal(
      this.id,
      this.nome,
      this.nomeCientifico,
      this.adultoImg,
      this.filhoteImg,
      this.tipoDieta,
      this.tipoMovimentacao,
      this.tipoHabito,
      this.pesoMedio,
      this.expVidaMedia,
      this.classificacao,
      this.habitat,
      this.descricao,
      this.somAnimal);

  void trocarImagem() {}

  void emitirSom() {}

  // void definirIndex(x) {
  //   int result = 0;
  //   if (x != int) {
  //     x.toString();
  //   }
  //   result = x;
  //   return print(result);
  // }
}

// Variavél que passa o numero index da pag clicada pelo usuario para a construção correta na pag.
int animalSelect = 0;


void fAnimalSelect(indexAnimal) {
  animalSelect = indexAnimal - 1;
  // aqui obtem o index/posição do objeto no array
  //return print(animalSelect.toString());
}

List<clAnimal> lAnimal = [
  clAnimal(
      1,
      'Onça Pintada',
      'Panthera onca',
      'img/animais/panthera_onca_adulto.JPG',
      'img/animais/panthera_onca_filhote.jpg',
      'Carnívora',
      'Terrestre',
      'Noturno',
      '45-100 kg',
      15,
      'Mamifero',
      'Pantanal',
      'A onça-pintada é o maior felino das Américas e símbolo da biodiversidade brasileira. Com sua pelagem dourada e manchas pretas únicas, ela é uma exímia caçadora e habita florestas, savanas e regiões alagadas, como o Pantanal e a Amazônia. Esse poderoso predador é solitário e prefere caçar ao amanhecer ou entardecer, alimentando-se de capivaras, veados e até jacarés.',
      'somAnimal'),
  clAnimal(
      2,
      'Onça Pintada2',
      'Panthera onca2',
      'img/animais/panthera_onca_adulto.JPG',
      'img/animais/panthera_onca_filhote.jpg',
      'Carnívora',
      'Terrestre',
      'Noturno',
      '45-100 kg',
      15,
      'Mamifero',
      'Pantanal',
      'A onça-pintada é o maior felino das Américas e símbolo da biodiversidade brasileira. Com sua pelagem dourada e manchas pretas únicas, ela é uma exímia caçadora e habita florestas, savanas e regiões alagadas, como o Pantanal e a Amazônia. Esse poderoso predador é solitário e prefere caçar ao amanhecer ou entardecer, alimentando-se de capivaras, veados e até jacarés.',
      'somAnimal'),
];
