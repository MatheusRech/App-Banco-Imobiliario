// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuracao.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ConfiguracaoController on ConfiguracaoControllerBase, Store {
  late final _$_valorParaCadaJogadorAtom = Atom(
      name: 'ConfiguracaoControllerBase._valorParaCadaJogador',
      context: context);

  @override
  double get _valorParaCadaJogador {
    _$_valorParaCadaJogadorAtom.reportRead();
    return super._valorParaCadaJogador;
  }

  @override
  set _valorParaCadaJogador(double value) {
    _$_valorParaCadaJogadorAtom.reportWrite(value, super._valorParaCadaJogador,
        () {
      super._valorParaCadaJogador = value;
    });
  }

  late final _$ConfiguracaoControllerBaseActionController =
      ActionController(name: 'ConfiguracaoControllerBase', context: context);

  @override
  void definirValorParaCadaJogador(double valor) {
    final _$actionInfo =
        _$ConfiguracaoControllerBaseActionController.startAction(
            name: 'ConfiguracaoControllerBase.definirValorParaCadaJogador');
    try {
      return super.definirValorParaCadaJogador(valor);
    } finally {
      _$ConfiguracaoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetar() {
    final _$actionInfo = _$ConfiguracaoControllerBaseActionController
        .startAction(name: 'ConfiguracaoControllerBase.resetar');
    try {
      return super.resetar();
    } finally {
      _$ConfiguracaoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
