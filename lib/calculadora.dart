// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imc/imc.dart';
import 'package:imc/main.dart';
import 'package:imc/resultado_imc.dart';

class Calculadora extends ConsumerWidget {
  Calculadora({
    super.key,
  });

  double? peso;
  double? altura;
  final filtroNumeroDecimal =
      FilteringTextInputFormatter.allow(RegExp(r'[0-9]+[,.]{0,1}[0-9]*'));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final List<IMC> historico = ref.watch(imcProvider);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [filtroNumeroDecimal],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ex: 1,73',
                labelText: 'Altura (m)',
              ),
              onChanged: (value) {
                altura = double.parse(value.replaceAll(',', '.'));
              },
            ),
            const SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [filtroNumeroDecimal],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ex: 71',
                labelText: 'Peso (Kg)',
              ),
              onChanged: (value) {
                peso = double.parse(value.replaceAll(',', '.'));
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (peso != null && altura != null) {
                  final imc = IMC(peso!, altura!, DateTime.now());
                  ref.read(imcSelecionadoProvider.notifier).state = imc;

                  final historico =
                      ref.read(historicoImcProvider.notifier).state;
                  historico.add(imc);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Resultado();
                  }));
                }
              },
              child: const Text('Calcular'),
            )
          ],
        ),
      ),
    );
  }
}
