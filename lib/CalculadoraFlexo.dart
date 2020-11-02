
import 'package:CalculadoradeFlexo/Caixa.dart';

class CalculadoraFlexo{
  int colunas = 8;

  double metrosaimprimirpadrao(int quantidade){
    var caixa =  Caixa();
    return caixa.metrosnacaixa()*quantidade/colunas;
  }

  double metrosaimprimir(int coluna, int quantidade, double metros){
    var caixa = Caixa.padrao(metros).metrosnacaixa();

    return caixa*quantidade/coluna ;
  }
}
