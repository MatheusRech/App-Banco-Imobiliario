import 'package:flutter/material.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/core/services/injecao_dependencia.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/erro/erro.controller.dart';

abstract class ErroViewStatelessBase extends StatelessWidget {
  
  ErroViewStatelessBase({super.key});

  abstract final Function(BuildContext) builder;

  final ErroController _erroController = InjecaoDependencia.obterDependencia<ErroController>();

  @override
  Widget build(BuildContext context) {
    _erroController.registrarContexto(context);
    return builder.call(context);
  }
  
}