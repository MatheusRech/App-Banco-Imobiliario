import 'package:flutter/material.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/routes/rota.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/configuracao/configuracao.view.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogadores/jogadores.view.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/home/home.view.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/adicionar_fundos/adicionar_fundos.view.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/escolha_acao/escolha_acao.view.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/escolha_jogador/escolha_jogador.view.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/pagar_taxas/pagar_taxas.view.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/resultado/resultado.view.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/transferir/transferir.view.dart';


class Rotas {
  static String home = '/';
  static String escolherJogadores = '/escolher-jogadores';
  static String configurarPartida = '/confiurar-partida';
  static String jogoEscolhaJogador = '/jogo/escolha-jogador';
  static String jogoEscolhaAcao = '/jogo/escolha-acao';
  static String jogoTransferir = '/jogo/transferir';
  static String jogoAdicionarFundos = '/jogo/adicionar-fundos';
  static String jogoPagarTaxas = '/jogo/pagar-taxas';
  static String jogoResultado = '/jogo/resultado';

  List<Rota> rotas = [
    Rota(path: home, construtor: (_) => const HomeView()),
    Rota(path: escolherJogadores, construtor: (_) => JogadoresView()),
    Rota(path: configurarPartida, construtor: (_) => ConfiguracaoView()),
    Rota(path: jogoEscolhaJogador, construtor: (_) => JogoEscolhaJogadorView()),
    Rota(path: jogoEscolhaAcao, construtor: (_) => JogoEscolhaAcaoView()),
    Rota(path: jogoTransferir, construtor: (_) => JogoTransferirView()),
    Rota(path: jogoAdicionarFundos, construtor: (_) => JogoAdicionarFundosView()),
    Rota(path: jogoPagarTaxas, construtor: (_) => JogoPagarTaxasView()),
    Rota(path: jogoResultado, construtor: (_) => JogoResultadoView())
  ];

  Map<String, WidgetBuilder> compilar() {
    Map<String, WidgetBuilder> retorno = {};

    for (var rota in rotas) {
      retorno.addAll({rota.path: (context) => rota.construtor.call(context)});
    }

    return retorno;
  }
}