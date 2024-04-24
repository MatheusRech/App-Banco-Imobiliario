
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/models/jogador.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/routes/rotas.dart';

part 'jogadores.controller.g.dart';

class JogadoresController = JogadoresControllerBase with _$JogadoresController;

abstract class JogadoresControllerBase with Store {
  @observable
  ObservableList<Jogador> _jogadores = ObservableList<Jogador>();
  ObservableList<Jogador> get jogadores => _jogadores;

  List<TextEditingController> _controllersTexto = List.empty(growable: true);
  List<TextEditingController> get controllersTexto => _controllersTexto;


  Color corJogador(int numeroJogador) {
    switch (numeroJogador) {
      case 0:
        return const Color.fromARGB(255, 127, 111, 173);
      case 1:
        return const Color.fromARGB(255, 182, 41, 41);
      case 2:
        return const Color.fromARGB(255, 41, 182, 97);
      case 3:
        return const Color.fromARGB(255, 182, 176, 41);
      case 4:
        return const Color.fromARGB(255, 182, 123, 41);
      case 5:
        return const Color.fromARGB(255, 182, 41, 128);
      default:
        throw 'Jogador não mapeado';
    }
  }

  @action
  void adicionarJogador() {
    if(_jogadores.length > 6) {
      throw 'Não é possivel adicionar mais de 6 jogadores';
    }

    _controllersTexto.add(TextEditingController(text: ''));
    _jogadores.add(Jogador());
  }

  @action
  void removerJogador() {
    if(_jogadores.isEmpty) {
      throw 'Não é possivel remover mais nenhum jogador, pois não existem mais jogadores para remover';
    }

    _controllersTexto.removeLast();
    _jogadores.removeLast();
  }

  @action
  void definirJogadores(BuildContext context) {
    for (var i = 0; i < _jogadores.length; i++) {
      if(_controllersTexto[i].text == ''){
        throw 'O jogador ${i+1} não tem um nome';
      }
      _jogadores[i].iniciar(_controllersTexto[i].text, corJogador(i));
    }

    Navigator.pushNamed(context, Rotas.configurarPartida);
  }

  @action
  void resetar() {
    _jogadores = ObservableList<Jogador>();
    _controllersTexto = List.empty(growable: true);
  }
}