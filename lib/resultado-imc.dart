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
class Resultado1 extends StatelessWidget {
  const Resultado1({super.key, required IMC imc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Resultado IMC'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: const Column(
          children: [
            Center(
                child: Text(
              "teste nome",
              style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'RobotoMono'),
            )),
            Center(
              child: Text(
                "Café da Manhã:\n\n1 xícara de chá verde\n1 tigela de mingau de aveia com frutas vermelhas (morangos, mirtilos) e sementes de chia\n1 fatia de pão integral com uma fina camada de pasta de amendoim ou abacate\nLanche da Manhã:\n\n1 maçã pequena\n10 amêndoas ou castanhas do Brasil\nAlmoço:\n\nSalada verde com folhas variadas (alface, rúcula, agrião) temperada com limão e azeite de oliva\n1 filé de peito de frango grelhado\n1 porção de quinoa ou arroz integral\nLegumes no vapor (brócolis, cenoura, couve-flor)\nLanche da Tarde:\n\n1 iogurte grego natural sem açúcar\n1 punhado de uvas ou outra fruta da estação\nJantar:\n\nSopa de legumes caseira (sem batata ou com baixo teor de amido)\n1 salada de pepino, tomate e cebola temperada com vinagre balsâmico\nCeia:\n1 xícara de chá de camomila ou chá de ervas sem cafeína\nObservações:\n\nBeba pelo menos 2 litros de água por dia.\nEvite alimentos processados, ricos em açúcar e gorduras saturadas.\n\nControle as porções e evite comer em excesso.\nPratique atividade física regularmente, como caminhada, natação ou corrida, de acordo com suas capacidades e preferências.",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ));
  }
}

class Resultado2 extends StatelessWidget {
  const Resultado2({super.key, required IMC imc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Resultado IMC'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: const Column(
          children: [
            Center(
                child: Text(
              "teste nome",
              style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'RobotoMono'),
            )),
            Center(
              child: Text(
                "Café da Manhã:\n\n1 xícara de chá verde\n1 tigela de mingau de aveia com frutas vermelhas (morangos, mirtilos) e sementes de chia\n1 fatia de pão integral com uma fina camada de pasta de amendoim ou abacate\nLanche da Manhã:\n\n1 maçã pequena\n10 amêndoas ou castanhas do Brasil\nAlmoço:\n\nSalada verde com folhas variadas (alface, rúcula, agrião) temperada com limão e azeite de oliva\n1 filé de peito de frango grelhado\n1 porção de quinoa ou arroz integral\nLegumes no vapor (brócolis, cenoura, couve-flor)\nLanche da Tarde:\n\n1 iogurte grego natural sem açúcar\n1 punhado de uvas ou outra fruta da estação\nJantar:\n\nSopa de legumes caseira (sem batata ou com baixo teor de amido)\n1 salada de pepino, tomate e cebola temperada com vinagre balsâmico\nCeia:\n1 xícara de chá de camomila ou chá de ervas sem cafeína\nObservações:\n\nBeba pelo menos 2 litros de água por dia.\nEvite alimentos processados, ricos em açúcar e gorduras saturadas.\n\nControle as porções e evite comer em excesso.\nPratique atividade física regularmente, como caminhada, natação ou corrida, de acordo com suas capacidades e preferências.",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ));
  }
}
