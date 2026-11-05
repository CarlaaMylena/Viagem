import 'package:flutter/material.dart';

// Botão com ícone em cima e texto embaixo (Quero Ir, Já Fui, Filtrar...)
class BotaoAcao extends StatelessWidget {
  final IconData icone;
  final String nome;

  BotaoAcao({required this.icone, required this.nome});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icone, color: Colors.blue),
        Text(nome, style: TextStyle(color: Colors.blue)),
      ],
    );
  }
}
