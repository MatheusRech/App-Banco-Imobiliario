// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transferir.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$JogoTransferirController on JogoTransferirControllerBase, Store {
  late final _$_jogadorTransferirAtom = Atom(
      name: 'JogoTransferirControllerBase._jogadorTransferir',
      context: context);

  @override
  Jogador? get _jogadorTransferir {
    _$_jogadorTransferirAtom.reportRead();
    return super._jogadorTransferir;
  }

  @override
  set _jogadorTransferir(Jogador? value) {
    _$_jogadorTransferirAtom.reportWrite(value, super._jogadorTransferir, () {
      super._jogadorTransferir = value;
    });
  }

  late final _$JogoTransferirControllerBaseActionController =
      ActionController(name: 'JogoTransferirControllerBase', context: context);

  @override
  void definirJogadorTransferir(Jogador jogador) {
    final _$actionInfo =
        _$JogoTransferirControllerBaseActionController.startAction(
            name: 'JogoTransferirControllerBase.definirJogadorTransferir');
    try {
      return super.definirJogadorTransferir(jogador);
    } finally {
      _$JogoTransferirControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void transferir() {
    final _$actionInfo = _$JogoTransferirControllerBaseActionController
        .startAction(name: 'JogoTransferirControllerBase.transferir');
    try {
      return super.transferir();
    } finally {
      _$JogoTransferirControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
