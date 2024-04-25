import 'package:flutter/material.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/escolha_jogador/escolha_jogador.estador.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/jogo.controller.dart';

class JogoEscolhaJogadorView extends StatefulWidget {
  const JogoEscolhaJogadorView({super.key, required this.controller});

  final JogoController controller;

  @override
  JogoEscolhaJogadorViewEstado createState() => JogoEscolhaJogadorViewEstado();
}


