import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imc/calculadora.dart';
import 'package:imc/historico.dart';
import 'package:imc/imc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const titulo = 'Calcule seu IMC';
    return ProviderScope(
      child: MaterialApp(
        title: titulo,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: titulo),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final historicoImcProvider =
    StateProvider((ref) => List<IMC>.empty(growable: true));

final imcSelecionadoProvider =
    StateProvider<IMC>((ref) => IMC(0, 0, DateTime.now()));

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.calculate)),
              Tab(icon: Icon(Icons.history)),
            ],
          ),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: TabBarView(
          children: [
            Calculadora(),
            const Historico(),
          ],
        ),
      ),
    );
  }
}
