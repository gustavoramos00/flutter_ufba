import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imc/dieta.dart';
import 'package:imc/dietas.dart';
import 'package:imc/imc.dart';
import 'package:imc/main.dart';

class Resultado extends ConsumerWidget {
  const Resultado({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final IMC imc = ref.watch(imcSelecionadoProvider);
    final List<Dieta> dietas = ref.watch(dietasProvider);

    Dieta dietaApropriada = definirDietaApropriada(imc, dietas);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Ícone de seta para a esquerda
          onPressed: () {
            Navigator.pop(context); // Volta para a tela anterior
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Center(
              child: Card(
                color: imc.recupearCategoria().cor,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(imc.recupearCategoria().nome),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: Column(
                children: [
                  Text('IMC : ${imc.calcularResultado().toStringAsFixed(2)}'),
                  Text('Peso: ${imc.peso.toStringAsFixed(2)}Kg'),
                  Text('Altura: ${imc.altura.toStringAsFixed(2)}m'),
                  Text('Data: ${imc.getDataFormatada()}'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            DietaExpansionPanelList(dieta: dietaApropriada),
          ],
        ),
      ),
    );
  }

  Dieta definirDietaApropriada(IMC imc, List<Dieta> dietas) {
    var resultadoIMC = imc.calcularResultado();

    final Dieta dietaApropriada;
    if (resultadoIMC < 18) {
      dietaApropriada = dietas[0];
    } else if (resultadoIMC >= 18 && resultadoIMC <= 24) {
      dietaApropriada = dietas[1];
    } else {
      dietaApropriada = dietas[2];
    }
    return dietaApropriada;
  }
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

class DietaExpansionPanelList extends StatefulWidget {
  final Dieta dieta;

  const DietaExpansionPanelList({super.key, required this.dieta});

  @override
  State<DietaExpansionPanelList> createState() =>
      _DietaExpansionPanelListState();
}

class _DietaExpansionPanelListState extends State<DietaExpansionPanelList> {
  _DietaExpansionPanelListState();

  List<Item> _data = [];

  @override
  void initState() {
    super.initState();
    _data =
        generateItems(widget.dieta); // Initialize the data with the passed list
  }

  List<Item> generateItems(Dieta dieta) {
    return [
      Item(expandedValue: dieta.cafeDaManha, headerValue: 'Café da Manhã'),
      Item(expandedValue: dieta.lancheManha, headerValue: 'Lanche da Manhã'),
      Item(expandedValue: dieta.almoco, headerValue: 'Almoço'),
      Item(expandedValue: dieta.lancheTarde, headerValue: 'Lanche da Tarde'),
      Item(expandedValue: dieta.cafeDaNoite, headerValue: 'Café da Noite'),
      Item(expandedValue: dieta.janta, headerValue: 'Janta'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: Text('${item.expandedValue}\n'),
          canTapOnHeader: true,
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
