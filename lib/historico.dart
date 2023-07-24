import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imc/main.dart';

class Historico extends ConsumerWidget {
  const Historico({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final historico = ref.watch(imcProvider);

    return Scrollbar(
      child: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          for (int i = 0; i < historico.length; i++)
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(
                  backgroundColor:
                      historico.elementAt(i).recupearCategoria().cor,
                  child:
                      Text(historico.elementAt(i).recupearCategoria().codigo),
                ),
              ),
              title: Text(
                  'IMC: ${historico.elementAt(i).calcularResultado().toStringAsFixed(2)}'),
              subtitle: Text('${historico.elementAt(i).getDataFormatada()}'),
            ),
        ],
      ),
    );
  }
}
