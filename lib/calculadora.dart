import 'package:flutter/material.dart';
import 'package:imc/imc.dart';
import 'package:imc/resultado-imc.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({
    super.key,
  });

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  double? peso;
  double? altura;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Informe sua altura (m)',
            ),
            onChanged: (value) {
              altura = double.parse(value);
            },
          ),
          const SizedBox(height: 10),
          TextField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Informe seu peso (Kg)',
            ),
            onChanged: (value) {
              peso = double.parse(value);
            },
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              if (peso != null && altura != null) {
                final imc = IMC(peso!, altura!, 'M', DateTime.now());
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Resultado(imc: imc)));
              }
            },
            child: const Text('Calcular'),
          )
        ],
      ),
    );
  }
}
