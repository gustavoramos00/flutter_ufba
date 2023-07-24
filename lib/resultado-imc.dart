import 'package:flutter/material.dart';
import 'package:imc/imc.dart';

class Resultado extends StatelessWidget {
  const Resultado({super.key, required IMC imc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Resultado IMC'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),body: const Column(children: [Center(child:Text("teste nome",style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic,fontFamily: 'RobotoMono' ),)),Center(child: Text("Café da Manhã:\n\n\n1 xícara de chá verde\n\n1 tigela de mingau de aveia com frutas vermelhas (morangos, mirtilos) e sementes de chia\n\n1 fatia de pão integral com uma fina camada de pasta de amendoim ou abacate\n\nLanche da Manhã:\n\n\n1 maçã pequena\n\n10 amêndoas ou castanhas do Brasil\n\nAlmoço:\n\nSalada verde com folhas variadas (alface, rúcula, agrião) temperada com limão e azeite de oliva\n\n1 filé de peito de frango grelhado\n\n1 porção de quinoa ou arroz integral\n\nLegumes no vapor (brócolis, cenoura, couve-flor)\n\nLanche da Tarde:\n\n\n1 iogurte grego natural sem açúcar\n\n1 punhado de uvas ou outra fruta da estação\n\nJantar:\n\n\nSopa de legumes caseira (sem batata ou com baixo teor de amido)\n\n1 salada de pepino, tomate e cebola temperada com vinagre balsâmico\n\nCeia:\n\n1 xícara de chá de camomila ou chá de ervas sem cafeína\n\nObservações:\n\n\nBeba pelo menos 2 litros de água por dia.\n\nEvite alimentos processados, ricos em açúcar e gorduras saturadas.\n\nControle as porções e evite comer em excesso.\n\nPratique atividade física regularmente, como caminhada, natação ou corrida, de acordo com suas capacidades e preferências.",textDirection: TextDirection.ltr,style: TextStyle(fontSize: 30),),)],));
  }
}
