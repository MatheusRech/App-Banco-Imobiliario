import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/acoes.controller.base.dart';

part 'adicionar_fundos.controller.g.dart';

class AdicionarFundosController = AdicionarFundosControllerBase with _$AdicionarFundosController;

abstract class AdicionarFundosControllerBase with Store, AcoesControllerBase {
  final _controllerInput = TextEditingController();
  TextEditingController get controllerInput => _controllerInput;

  @action
  void adicionar(){
    var valor = double.tryParse(_controllerInput.text);

    if(valor == null){
      throw 'Informe um valor correto';
    }

    jogadorJogando.transferirFundos(valor);
  }
}