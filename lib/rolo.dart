class rolo{
  double metros, largura;

  //ainda nao utilizados, criados para o futuro
  List<String> material = ['termico', 'autocopiativo', 'liso'];
  String tipo;

  rolo.defmetros(this.metros){
    this.largura = 79;
  }

  rolo(){
    this.largura = 79;
    this.metros = 40;
  }
}