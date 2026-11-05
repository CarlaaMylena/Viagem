import 'package:flutter/material.dart';
import 'tela_viagens.dart';

// Widget raiz do app: define a tela inicial
class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaViagens(),
    );
  }
}
