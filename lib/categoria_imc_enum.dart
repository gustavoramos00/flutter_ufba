import 'package:flutter/material.dart';

enum CategoriaImc {
  abaixoPeso(
      nome: 'Abaixo do peso',
      codigo: 'AP',
      cor: Color.fromRGBO(232, 245, 233, 1)),
  normal(nome: 'Normal', codigo: 'N', cor: Colors.green),
  sobrepeso(
      nome: 'Sobrepeso', codigo: 'SP', cor: Color.fromRGBO(253, 216, 53, 1)),
  obesidadeI(
      nome: 'Obesidade grau I',
      codigo: 'OB1',
      cor: Color.fromRGBO(245, 127, 23, 1)),
  obesidadeII(
      nome: 'Obesidade grau II',
      codigo: 'OB2',
      cor: Color.fromRGBO(229, 57, 53, 1)),
  obesidadeIII(
      nome: 'Obesidade grau III',
      codigo: 'OB3',
      cor: Color.fromRGBO(183, 28, 28, 1));

  const CategoriaImc(
      {required this.nome, required this.codigo, required this.cor});

  final String nome;
  final String codigo;
  final Color cor;
}
