// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jogador.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Jogador on JogadorBase, Store {
  late final _$nomeAtom = Atom(name: 'JogadorBase.nome', context: context);

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  late final _$capitalAtom =
      Atom(name: 'JogadorBase.capital', context: context);

  @override
  double get capital {
    _$capitalAtom.reportRead();
    return super.capital;
  }

  @override
  set capital(double value) {
    _$capitalAtom.reportWrite(value, super.capital, () {
      super.capital = value;
    });
  }

  late final _$corAtom = Atom(name: 'JogadorBase.cor', context: context);

  @override
  Color get cor {
    _$corAtom.reportRead();
    return super.cor;
  }

  @override
  set cor(Color value) {
    _$corAtom.reportWrite(value, super.cor, () {
      super.cor = value;
    });
  }

  late final _$JogadorBaseActionController =
      ActionController(name: 'JogadorBase', context: context);

  @override
  void iniciar(String nome, Color cor) {
    final _$actionInfo =
        _$JogadorBaseActionController.startAction(name: 'JogadorBase.iniciar');
    try {
      return super.iniciar(nome, cor);
    } finally {
      _$JogadorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void transferirFundos(double valor) {
    final _$actionInfo = _$JogadorBaseActionController.startAction(
        name: 'JogadorBase.transferirFundos');
    try {
      return super.transferirFundos(valor);
    } finally {
      _$JogadorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void descontarFundos(double valor) {
    final _$actionInfo = _$JogadorBaseActionController.startAction(
        name: 'JogadorBase.descontarFundos');
    try {
      return super.descontarFundos(valor);
    } finally {
      _$JogadorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
capital: ${capital},
cor: ${cor}
    ''';
  }
}
