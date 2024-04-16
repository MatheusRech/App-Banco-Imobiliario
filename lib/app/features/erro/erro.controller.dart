import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'erro.controller.g.dart';

class ErroController = ErroControllerBase with _$ErroController;

abstract class ErroControllerBase with Store {

  ErroControllerBase() {
    FlutterError.onError = capturarErro;
  }

  @observable
  String? mensagem = 'Teste';

  late BuildContext _buildContext;

  void registrarContexto(BuildContext contexto){
    _buildContext = contexto;
  }

  @action
  void capturarErro(FlutterErrorDetails? detalhes) {
    mensagem = detalhes?.exception.toString();

    if(mensagem == null){
      return;
    }

    showDialog(
      context: _buildContext,
      builder: (_) => AlertDialog(
        title: Text(
          'Ops!!!',
          style: Theme.of(_buildContext).textTheme.titleSmall?.merge(TextStyle(
            color: Theme.of(_buildContext).colorScheme.error
          )),
        ),
        content: Text(
          mensagem ?? '',
          style: Theme.of(_buildContext).textTheme.bodySmall?.merge(TextStyle(
            color: Theme.of(_buildContext).colorScheme.error
          )),
        )
      )
    );
  }
}