import 'package:flutter/material.dart';

// Círculo cinza com ícone de pessoa
class Pessoa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.grey[300],
      child: Icon(Icons.person, size: 40, color: Colors.grey),
    );
  }
}
