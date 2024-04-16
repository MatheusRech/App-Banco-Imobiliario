// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jogo.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$JogoController on JogoControllerBase, Store {
  late final _$_jogadorJogandoAtom =
      Atom(name: 'JogoControllerBase._jogadorJogando', context: context);

  @override
  Jogador get _jogadorJogando {
    _$_jogadorJogandoAtom.reportRead();
    return super._jogadorJogando;
  }

  bool __jogadorJogandoIsInitialized = false;

  @override
  set _jogadorJogando(Jogador value) {
    _$_jogadorJogandoAtom.reportWrite(
        value, __jogadorJogandoIsInitialized ? super._jogadorJogando : null,
        () {
      super._jogadorJogando = value;
      __jogadorJogandoIsInitialized = true;
    });
  }

  late final _$JogoControllerBaseActionController =
      ActionController(name: 'JogoControllerBase', context: context);

  @override
  void iniciarJogo() {
    final _$actionInfo = _$JogoControllerBaseActionController.startAction(
        name: 'JogoControllerBase.iniciarJogo');
    try {
      return super.iniciarJogo();
    } finally {
      _$JogoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void definirJogadorJogando(Jogador jogador) {
    final _$actionInfo = _$JogoControllerBaseActionController.startAction(
        name: 'JogoControllerBase.definirJogadorJogando');
    try {
      return super.definirJogadorJogando(jogador);
    } finally {
      _$JogoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void encerrarJogo() {
    final _$actionInfo = _$JogoControllerBaseActionController.startAction(
        name: 'JogoControllerBase.encerrarJogo');
    try {
      return super.encerrarJogo();
    } finally {
      _$JogoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
