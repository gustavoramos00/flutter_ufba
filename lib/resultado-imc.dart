import 'package:flutter/material.dart';
import 'package:imc/imc.dart';
import 'dieta.dart';


class Resultado extends StatefulWidget {
  const Resultado({Key? key, required IMC imc}) : super(key: key);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  final List<dieta> _dietas = [
    dieta(
      id: 1,
      title: "Café da Manhã",
      description:
          "1 xícara de aveia cozida com leite desnatado ou vegetal;\n1 colher de sopa de sementes de chia;\n1 banana fatiada;\n1 xícara de chá verde.",
    ),
    dieta(
      id: 2,
      title: "Lanche da Manhã",
      description:
          "1 fruta (maçã, banana, laranja, etc.);\n1 iogurte natural;\n1 porção de castanhas.",
    ),
    dieta(
      id: 3,
      title: "Almoço",
      description:
          "1 porção de carne grelhada (frango, peixe, etc.);\n1 porção de arroz integral;\n1 porção de legumes cozidos.",
    ),
    dieta(
      id: 4,
      title: "Lanche da Tarde",
      description:
          "1 sanduíche integral com queijo e tomate;\n1 suco natural (laranja, limão, etc.).",
    ),
    dieta(
      id: 5,
      title: "Café da Noite",
      description:
          "1 xícara de sopa de legumes;\n2 torradas integrais;\n1 chá de camomila.",
    ),
    dieta(
      id: 6,
      title: "Janta",
      description:
          "1 porção de peixe assado;\n1 batata-doce cozida;\nSalada verde à vontade.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildExpansionPanelList("Café da Manhã"),
            _buildExpansionPanelList("Lanche da Manhã"),
            _buildExpansionPanelList("Almoço"),
            _buildExpansionPanelList("Lanche da Tarde"),
            _buildExpansionPanelList("Café da Noite"),
            _buildExpansionPanelList("Janta"),
          ],
        ),
      ),
    );
  }

  Widget _buildExpansionPanelList(String mealType) {
    final dietaList = _dietas.where((dieta d) => d.title == mealType).toList();
    return ExpansionPanelList(
      elevation: 0, // Remove a sombra do ExpansionPanelList
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          dietaList[index].isExpanded = !isExpanded;
        });
      },
      children: dietaList.map<ExpansionPanel>((dieta d) {
        return ExpansionPanel(
          canTapOnHeader: true, // Permite clicar no cabeçalho para expandir o painel
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(
                d.title,
                style: TextStyle(color: Colors.black, fontSize: 18), // Cor e tamanho do texto do cabeçalho (preto)
              ),
            );
          },
          body: ListTile(
            title: Text(
              d.description,
              style: TextStyle(color: Colors.black), // Cor do texto do conteúdo (preto)
            ),
          ),
          isExpanded: d.isExpanded,
        );
      }).toList(),
    );
  }
}
class Resultado1 extends StatefulWidget {
  const Resultado1({Key? key, required IMC imc}) : super(key: key);

  @override
  State<Resultado1> createState() => _ResultadoState1();
}

class _ResultadoState1 extends State<Resultado1> {
  final List<dieta> _dietas = [
    dieta(
      id: 1,
      title: "Café da Manhã",
      description:
          "1 porção de aveia cozida com frutas frescas (como morangos ou maçãs) e uma pitada de canela.;\n1 copo de leite desnatado ou uma alternativa vegetal, como leite de amêndoa.\n1 xícara de chá verde ou café sem açúcar.\n",
    ),
    dieta(
      id: 2,
      title: "Lanche da Manhã",
      description:
          "1 iogurte natural sem adição de açúcar.;\n pequena porção de nozes ou castanhas (cerca de 30g).\n",
    ),
    dieta(
      id: 3,
      title: "Almoço",
      description:
          "1 porção de peito de frango grelhado ou peixe assado.;\n1 porção de vegetais cozidos no vapor ou salada verde com uma variedade de folhas, pepino, tomate, cenoura, etc.;\n1/2 xícara de arroz integral ou quinoa.",
    ),
    dieta(
      id: 4,
      title: "Lanche da Tarde",
      description:
          "1 fruta fresca (como uma laranja, banana ou pêssego)\n1 suco natural (laranja, limão, etc.).",
    ),
    dieta(
      id: 5,
      title: "Janta",
      description:
          "1 porção de carne magra (por exemplo, carne vermelha magra, peru ou frango sem pele) ou tofu grelhado.\n1 porção de legumes cozidos ou salada.\n1 batata-doce assada ou 1/2 xícara de quinoa.",
    ),
    dieta(
      id: 6,
      title: "Ceia",
      description:
          "1 xícara de chá de ervas ou água.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildExpansionPanelList("Café da Manhã"),
            _buildExpansionPanelList("Lanche da Manhã"),
            _buildExpansionPanelList("Almoço"),
            _buildExpansionPanelList("Lanche da Tarde"),
            _buildExpansionPanelList("Café da Noite"),
            _buildExpansionPanelList("Janta"),
          ],
        ),
      ),
    );
  }

  Widget _buildExpansionPanelList(String mealType) {
    final dietaList = _dietas.where((dieta d) => d.title == mealType).toList();
    return ExpansionPanelList(
      elevation: 0, // Remove a sombra do ExpansionPanelList
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          dietaList[index].isExpanded = !isExpanded;
        });
      },
      children: dietaList.map<ExpansionPanel>((dieta d) {
        return ExpansionPanel(
          canTapOnHeader: true, // Permite clicar no cabeçalho para expandir o painel
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(
                d.title,
                style: TextStyle(color: Colors.black, fontSize: 18), // Cor e tamanho do texto do cabeçalho (preto)
              ),
            );
          },
          body: ListTile(
            title: Text(
              d.description,
              style: TextStyle(color: Colors.black), // Cor do texto do conteúdo (preto)
            ),
          ),
          isExpanded: d.isExpanded,
        );
      }).toList(),
    );
  }
}

class Resultado2 extends StatefulWidget {
  const Resultado2({Key? key, required IMC imc}) : super(key: key);

  @override
  State<Resultado2> createState() => _ResultadoState2();
}

class _ResultadoState2 extends State<Resultado2> {
  final List<dieta> _dietas = [
    dieta(
      id: 1,
      title: "Café da Manhã",
      description:
          "1 porção de cereal integral (aveia, granola sem adição de açúcar) com leite desnatado ou uma alternativa vegetal.\n1 porção de frutas frescas (por exemplo, uma banana ou uma maçã).\n1 xícara de chá verde ou café sem açúcar.\n",
    ),
    dieta(
      id: 2,
      title: "Lanche da Manhã",
      description:
          "1 porção de proteína magra (frango grelhado, peixe assado, tofu) com temperos naturais.\n1 porção de vegetais variados (salada verde, tomate, cenoura, brócolis, etc.).\n1 porção de carboidrato complexo (arroz integral, batata-doce, quinoa).",
    ),
    dieta(
      id: 3,
      title: "Almoço",
      description:
          "1 porção de frutas frescas (pode ser diferente daquela do café da manhã, como uma laranja ou um punhado de uvas).\n1 pequena porção de nozes ou amêndoas.\n1 porção de legumes cozidos.",
    ),
    dieta(
      id: 4,
      title: "Lanche da Tarde",
      description:
          "1 sanduíche integral com queijo e tomate;\n1 suco natural (laranja, limão, etc.).",
    ),
    dieta(
      id: 5,
      title: "Café da Noite",
      description:
          "1 xícara de chá de ervas ou um copo de leite desnatado.\n",
    ),
    dieta(
      id: 6,
      title: "Janta",
      description:
          "1 porção de proteína magra (por exemplo, salmão grelhado, peru ou carne magra).\n1 porção de vegetais cozidos no vapor ou uma salada colorida.\n1 porção de grãos integrais (macarrão integral, quinoa, etc.).",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildExpansionPanelList("Café da Manhã"),
            _buildExpansionPanelList("Lanche da Manhã"),
            _buildExpansionPanelList("Almoço"),
            _buildExpansionPanelList("Lanche da Tarde"),
            _buildExpansionPanelList("Café da Noite"),
            _buildExpansionPanelList("Janta"),
          ],
        ),
      ),
    );
  }

  Widget _buildExpansionPanelList(String mealType) {
    final dietaList = _dietas.where((dieta d) => d.title == mealType).toList();
    return ExpansionPanelList(
      elevation: 0, // Remove a sombra do ExpansionPanelList
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          dietaList[index].isExpanded = !isExpanded;
        });
      },
      children: dietaList.map<ExpansionPanel>((dieta d) {
        return ExpansionPanel(
          canTapOnHeader: true, // Permite clicar no cabeçalho para expandir o painel
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(
                d.title,
                style: TextStyle(color: Colors.black, fontSize: 18), // Cor e tamanho do texto do cabeçalho (preto)
              ),
            );
          },
          body: ListTile(
            title: Text(
              d.description,
              style: TextStyle(color: Colors.black), // Cor do texto do conteúdo (preto)
            ),
          ),
          isExpanded: d.isExpanded,
        );
      }).toList(),
    );
  }
}