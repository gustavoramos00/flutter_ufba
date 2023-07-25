import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imc/main.dart';
import 'package:imc/resultado-imc.dart';

class Historico extends ConsumerWidget {
  const Historico({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final historico = ref.watch(imcProvider);

    return Scrollbar(
        child: ListView.builder(
      itemCount: historico.length,
      itemBuilder: (BuildContext context, int index) {
        final imc = historico.elementAt(index);

        return InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Resultado(imc: imc)));
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
            // trailing: InkWell(
            //   onTap: () {
            //     ref.read(imcProvider.notifier).state.remove(imc);
            //   },
            //   child: const Icon(Icons.delete),
            // ),
          ),
        );
      },
    ));
  }
}
