import 'package:flutter/material.dart';
import 'botao_acao.dart';
import 'pessoa.dart';

// Tela principal do app
class TelaViagens extends StatelessWidget {
  // Texto de exemplo
  final String texto =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
      'Fusce id diam id ligula ultricies pulvinar. In vel ante at, '
      'sagittis eu libero et, venenatis lacus. Etiam eget purus leo. '
      'Nam consectetur ornare est eu lobortis. Morbi eu augue eu lectus '
      'condimentum vestibulum. Etiam id nibh luctus, porttitor arcu et, '
      'porttitor purus. Pellentesque vulputate nibh sit amet rutrum '
      'viverra. Nullam eget metus est. Integer condimentum, odio sed '
      'congue malesuada, ipsum nisi bibendum lectus.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra azul do topo
      appBar: AppBar(
        title: Text('Viagens'),
        backgroundColor: Colors.blue,
      ),

      // ListView permite rolar a tela
      body: ListView(
        children: [
          // 1) Imagem com texto por cima
          Stack(
            children: [
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Colosseo_2020.jpg/1280px-Colosseo_2020.jpg',
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 10,
                bottom: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Roma',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                    Text('Coliseu',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),

          // 2) Linha com 4 botões
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BotaoAcao(icone: Icons.location_on_outlined, nome: 'Quero Ir'),
                BotaoAcao(icone: Icons.check_circle_outline, nome: 'Já Fui'),
                BotaoAcao(icone: Icons.share, nome: 'Compartilhar'),
                // Avaliações tem 3 estrelas em vez de um ícone só
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.blue),
                        Icon(Icons.star, color: Colors.blue),
                        Icon(Icons.star, color: Colors.blue),
                      ],
                    ),
                    Text('Avaliações', style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ],
            ),
          ),

          // 3) Texto descritivo
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(texto, textAlign: TextAlign.justify),
          ),

          // 4) Título "Pessoas Encontradas" + botão Filtrar
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pessoas Encontradas',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                BotaoAcao(icone: Icons.filter_alt, nome: 'Filtrar'),
              ],
            ),
          ),

          // 5) Fotos (círculos cinza) das pessoas
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Pessoa(),
              Pessoa(),
              Pessoa(),
              Pessoa(),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
