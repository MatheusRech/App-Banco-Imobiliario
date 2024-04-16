import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/data/models/jogador.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/acoes.controller.base.dart';

part 'transferir.controller.g.dart';

class JogoTransferirController = JogoTransferirControllerBase with _$JogoTransferirController;

abstract class JogoTransferirControllerBase with Store, AcoesControllerBase {

  @observable
  Jogador? _jogadorTransferir;
  Jogador? get jogadorTransferir => _jogadorTransferir;

  Iterable<Jogador> get jogadoresDisponiveisParaTransferir => jogoController.jogadores.where((jogador) => jogador != jogadorJogando);

  final _controllerInput = TextEditingController();
  TextEditingController get controllerInput => _controllerInput;


  @action
  void definirJogadorTransferir(Jogador jogador){
    _jogadorTransferir = jogador;
  }

  @action
  void transferir(){
    var valor = double.tryParse(controllerInput.text);

    if(valor == null){
       throw 'Informe um valor correto';
    }

    if(_jogadorTransferir == null){
      throw 'Escolha um jogador para receber o valor';
    }

    _jogadorTransferir?.transferirFundos(valor);
    jogadorJogando.descontarFundos(valor);
  }
}