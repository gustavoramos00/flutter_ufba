import 'package:imc/categoria_imc_enum.dart';
import 'package:intl/intl.dart';

class IMC {
  final double peso;
  final double altura;
  final DateTime data;

  IMC(this.peso, this.altura, this.data);

  String getDataFormatada() {
    return DateFormat('dd/MM/yyyy, HH:mm').format(data);
  }

  double calcularResultado() {
    return peso / (altura * altura);
  }

  CategoriaImc recupearCategoria() {
    var resultadoImc = calcularResultado();

    if (resultadoImc < 18.5) {
      return CategoriaImc.abaixoPeso;
    } else if (resultadoImc < 25) {
      return CategoriaImc.normal;
    } else if (resultadoImc < 30) {
      return CategoriaImc.sobrepeso;
    } else if (resultadoImc < 35) {
      return CategoriaImc.obesidadeI;
    } else if (resultadoImc < 40) {
      return CategoriaImc.obesidadeII;
    } else {
      return CategoriaImc.obesidadeIII;
    }
  }
}
