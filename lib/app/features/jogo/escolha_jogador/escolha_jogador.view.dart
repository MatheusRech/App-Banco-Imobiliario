import 'package:flutter/material.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/escolha_jogador/escolha_jogador.estador.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/jogo.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/core/services/injecao_dependencia.dart';

class JogoEscolhaJogadorView extends StatefulWidget {
  JogoEscolhaJogadorView({super.key});

  final controller = InjecaoDependencia.obterDependencia<JogoController>();

  @override
  JogoEscolhaJogadorViewEstado createState() => JogoEscolhaJogadorViewEstado();
}


