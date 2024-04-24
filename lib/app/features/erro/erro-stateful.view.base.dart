import 'package:flutter/material.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/erro/erro.controller.dart';

abstract class ErroViewStatefulBase<T extends StatefulWidget> extends State<T> {
  ErroViewStatefulBase({required this.erroController});
  
  abstract final Function(BuildContext) builder;
  final ErroController erroController;

  @override
  Widget build(BuildContext context) {
    erroController.registrarContexto(context);
    return builder.call(context);
  }
  
}