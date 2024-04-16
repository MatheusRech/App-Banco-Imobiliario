import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/acoes.controller.base.dart';

part 'pagar_taxas.controller.g.dart';

class PagarTaxasController = PagarTaxasControllerBase with _$PagarTaxasController;

abstract class PagarTaxasControllerBase with Store, AcoesControllerBase {
  
  final _controllerInput = TextEditingController();
  TextEditingController get controllerInput => _controllerInput;

  @action
  void pagar(){
    var valor = double.tryParse(_controllerInput.text);

    if(valor == null){
      throw 'Informe um valor correto';
    }

    jogadorJogando.descontarFundos(valor);
  }
}
