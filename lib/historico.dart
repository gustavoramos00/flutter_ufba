import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imc/main.dart';
import 'package:imc/resultado_imc.dart';

class Historico extends ConsumerWidget {
  const Historico({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final historico = ref.watch(historicoImcProvider);
    if (historico.isEmpty) {
      return Center(
        child: Text(
          'Ops, nenhum IMC no histórico ainda',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      );
    }

    return Scrollbar(
        child: ListView.builder(
      itemCount: historico.length,
      itemBuilder: (BuildContext context, int index) {
        final imc = historico.elementAt(index);

        return InkWell(
          onTap: () {
            ref.read(imcSelecionadoProvider.notifier).state = imc;

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Resultado()));
          },
          child: ListTile(
            leading: ExcludeSemantics(
              child: CircleAvatar(
                backgroundColor: imc.recupearCategoria().cor,
                child: Text(imc.recupearCategoria().codigo),
              ),
            ),
            title: Text('IMC: ${imc.calcularResultado().toStringAsFixed(2)}'),
            subtitle: Text(imc.getDataFormatada()),
          ),
        );
      },
    ));
  }
}
