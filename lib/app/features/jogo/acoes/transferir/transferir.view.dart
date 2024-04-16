import 'package:flutter/material.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/erro/erro.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/transferir/transferir.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/core/services/injecao_dependencia.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/transferir/transferir.estado.dart';

class JogoTransferirView extends StatefulWidget {

  JogoTransferirView({super.key});

  final controller = InjecaoDependencia.obterDependencia<JogoTransferirController>();
  final erroController = InjecaoDependencia.obterDependencia<ErroController>();

  void transferir(BuildContext context) {
    controller.transferir();
    Navigator.pop(context);
    Navigator.pop(context);
  }

  @override
  TransferirViewEstado createState() => TransferirViewEstado();
}

