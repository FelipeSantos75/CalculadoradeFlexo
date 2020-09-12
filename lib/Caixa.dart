import 'package:CalculadoradeFlexo/rolo.dart';

class Caixa{
  double Quantidade;
  rolo rolinho;

  double metrosnacaixa(){
    return this.Quantidade * rolinho.metros;
}
 Caixa(){
    this.Quantidade = 30;
    this.rolinho = rolo();
 }
 Caixa.naopadrao(double quantidade, double metros){
    this.Quantidade = quantidade;
    this.rolinho = rolo.defmetros(metros);
 }

 Caixa.padrao(double metros){
    this.Quantidade = 30;
    this.rolinho = rolo.defmetros(metros);
 }
}