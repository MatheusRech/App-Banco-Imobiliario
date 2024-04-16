import 'package:flutter/material.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/data/models/jogador.dart';

class JogadorEscolhido extends StatelessWidget {

  const JogadorEscolhido({super.key, required this.jogador});

  final Jogador jogador;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: jogador.cor,
        borderRadius: BorderRadius.circular(8)
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            jogador.nome,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            'R\$ ${jogador.capital}',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

}