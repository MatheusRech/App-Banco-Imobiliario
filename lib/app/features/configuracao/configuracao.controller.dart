import 'package:mobx/mobx.dart';

part 'configuracao.controller.g.dart';

class ConfiguracaoController = ConfiguracaoControllerBase with _$ConfiguracaoController;

abstract class ConfiguracaoControllerBase with Store {
  @observable
  double _valorParaCadaJogador = 0;
  double get valorParaCadaJogador => _valorParaCadaJogador;

  @action
  void definirValorParaCadaJogador(double valor){
    _valorParaCadaJogador = valor;
  }

  @action
  void resetar(){
    _valorParaCadaJogador = 0;
  }
}