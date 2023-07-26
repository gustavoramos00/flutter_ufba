import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imc/dieta.dart';

final dietasProvider = StateProvider<List<Dieta>>((ref) => [
      Dieta(
          cafeDaManha:
              '1 xícara de aveia cozida com leite desnatado ou vegetal;\n1 colher de sopa de sementes de chia;\n1 banana fatiada;\n1 xícara de chá verde.',
          lancheManha:
              '1 fruta (maçã, banana, laranja, etc.);\n1 iogurte natural;\n1 porção de castanhas.',
          almoco:
              '1 porção de carne grelhada (frango, peixe, etc.);\n1 porção de arroz integral;\n1 porção de legumes cozidos.',
          lancheTarde:
              '1 sanduíche integral com queijo e tomate;\n1 suco natural (laranja, limão, etc.).',
          cafeDaNoite:
              '1 xícara de sopa de legumes;\n2 torradas integrais;\n1 chá de camomila.',
          janta:
              '1 porção de peixe assado;\n1 batata-doce cozida;\nSalada verde à vontade.'),
      Dieta(
          cafeDaManha:
              '1 porção de aveia cozida com frutas frescas (como morangos ou maçãs) e uma pitada de canela.;\n1 copo de leite desnatado ou uma alternativa vegetal, como leite de amêndoa.\n1 xícara de chá verde ou café sem açúcar.',
          lancheManha:
              '1 iogurte natural sem adição de açúcar.;\n pequena porção de nozes ou castanhas (cerca de 30g).\n',
          almoco:
              '1 porção de peito de frango grelhado ou peixe assado.;\n1 porção de vegetais cozidos no vapor ou salada verde com uma variedade de folhas, pepino, tomate, cenoura, etc.;\n1/2 xícara de arroz integral ou quinoa.',
          lancheTarde:
              '1 fruta fresca (como uma laranja, banana ou pêssego)\n1 suco natural (laranja, limão, etc.).',
          cafeDaNoite:
              '1 porção de carne magra (por exemplo, carne vermelha magra, peru ou frango sem pele) ou tofu grelhado.\n1 porção de legumes cozidos ou salada.\n1 batata-doce assada ou 1/2 xícara de quinoa.',
          janta: '1 xícara de chá de ervas ou água.'),
      Dieta(
          cafeDaManha:
              '1 porção de cereal integral (aveia, granola sem adição de açúcar) com leite desnatado ou uma alternativa vegetal.\n1 porção de frutas frescas (por exemplo, uma banana ou uma maçã).\n1 xícara de chá verde ou café sem açúcar.',
          lancheManha:
              '1 porção de proteína magra (frango grelhado, peixe assado, tofu) com temperos naturais.\n1 porção de vegetais variados (salada verde, tomate, cenoura, brócolis, etc.).\n1 porção de carboidrato complexo (arroz integral, batata-doce, quinoa).',
          almoco:
              '1 porção de frutas frescas (pode ser diferente daquela do café da manhã, como uma laranja ou um punhado de uvas).\n1 pequena porção de nozes ou amêndoas.\n1 porção de legumes cozidos.',
          lancheTarde:
              '1 sanduíche integral com queijo e tomate;\n1 suco natural (laranja, limão, etc.).',
          cafeDaNoite:
              '1 xícara de chá de ervas ou um copo de leite desnatado.\n',
          janta:
              '1 porção de proteína magra (por exemplo, salmão grelhado, peru ou carne magra).\n1 porção de vegetais cozidos no vapor ou uma salada colorida.\n1 porção de grãos integrais (macarrão integral, quinoa, etc.).'),
    ]);
