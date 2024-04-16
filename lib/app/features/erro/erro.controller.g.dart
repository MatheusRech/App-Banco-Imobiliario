// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'erro.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ErroController on ErroControllerBase, Store {
  late final _$mensagemAtom =
      Atom(name: 'ErroControllerBase.mensagem', context: context);

  @override
  String? get mensagem {
    _$mensagemAtom.reportRead();
    return super.mensagem;
  }

  @override
  set mensagem(String? value) {
    _$mensagemAtom.reportWrite(value, super.mensagem, () {
      super.mensagem = value;
    });
  }

  late final _$ErroControllerBaseActionController =
      ActionController(name: 'ErroControllerBase', context: context);

  @override
  void capturarErro(FlutterErrorDetails? detalhes) {
    final _$actionInfo = _$ErroControllerBaseActionController.startAction(
        name: 'ErroControllerBase.capturarErro');
    try {
      return super.capturarErro(detalhes);
    } finally {
      _$ErroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
mensagem: ${mensagem}
    ''';
  }
}
