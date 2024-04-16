// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jogadores.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$JogadoresController on JogadoresControllerBase, Store {
  late final _$_jogadoresAtom =
      Atom(name: 'JogadoresControllerBase._jogadores', context: context);

  @override
  ObservableList<Jogador> get _jogadores {
    _$_jogadoresAtom.reportRead();
    return super._jogadores;
  }

  @override
  set _jogadores(ObservableList<Jogador> value) {
    _$_jogadoresAtom.reportWrite(value, super._jogadores, () {
      super._jogadores = value;
    });
  }

  late final _$JogadoresControllerBaseActionController =
      ActionController(name: 'JogadoresControllerBase', context: context);

  @override
  void adicionarJogador() {
    final _$actionInfo = _$JogadoresControllerBaseActionController.startAction(
        name: 'JogadoresControllerBase.adicionarJogador');
    try {
      return super.adicionarJogador();
    } finally {
      _$JogadoresControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removerJogador() {
    final _$actionInfo = _$JogadoresControllerBaseActionController.startAction(
        name: 'JogadoresControllerBase.removerJogador');
    try {
      return super.removerJogador();
    } finally {
      _$JogadoresControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void definirJogadores(BuildContext context) {
    final _$actionInfo = _$JogadoresControllerBaseActionController.startAction(
        name: 'JogadoresControllerBase.definirJogadores');
    try {
      return super.definirJogadores(context);
    } finally {
      _$JogadoresControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetar() {
    final _$actionInfo = _$JogadoresControllerBaseActionController.startAction(
        name: 'JogadoresControllerBase.resetar');
    try {
      return super.resetar();
    } finally {
      _$JogadoresControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
