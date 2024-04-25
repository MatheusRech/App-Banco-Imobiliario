import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'jogador.g.dart';

class Jogador = JogadorBase with _$Jogador;

abstract class JogadorBase with Store {
  JogadorBase();

  @observable
  String nome = '';

  @observable
  double capital = 0;

  @observable
  Color cor = const Color.fromARGB(0, 0, 0, 0);

  @action
  void iniciar(String nome, Color cor){
    this.nome = nome;
    this.cor = cor;
  }

  @action
  void transferirFundos(double valor) {
    if(valor <= 0){
      throw 'Não é possivel transferir valores zerados ou negativos';
    }

    capital += valor;
  }

  @action
  void descontarFundos(double valor) {
    if(valor <= 0){
      throw 'Não é possivel descontar valores zerados ou negativos';
    }

    capital -= valor;
  }
}