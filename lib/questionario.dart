import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  Questionario({
    this.perguntas,
    this.perguntaSelecionada,
    this.respostas,
    this.onResponder,
  });

  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final List<Map<String, Object>> respostas;
  final Function(int) onResponder;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto']),
        ...respostas
            .map(
              (resp) => Resposta(texto: resp['texto'], onResponder: () => onResponder(resp['pontuacao'])),
            )
            .toList(),
      ],
    );
  }
}
