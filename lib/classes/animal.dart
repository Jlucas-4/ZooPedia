class clAnimal {
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
      this.somAnimal
    );
  
  void trocarImagem(){}

  void emitirSom(){}

  void checarLuminosidade(){}
}
