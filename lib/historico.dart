import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imc/main.dart';

class Historico extends ConsumerWidget {
  const Historico({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final historico = ref.watch(imcProvider);
    return ListView(
      padding: const EdgeInsets.all(20.0),
      children: <Widget>[
        Text("${historico.length}"),
      ],
    );
  }
}
