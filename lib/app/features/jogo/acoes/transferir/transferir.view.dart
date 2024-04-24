import 'package:flutter/material.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/erro/erro.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/transferir/transferir.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/transferir/transferir.estado.dart';

class JogoTransferirView extends StatefulWidget {
  const JogoTransferirView({super.key, required this.controller, required this.erroController});

  final JogoTransferirController controller;
  final ErroController erroController;

  void transferir(BuildContext context) {
    controller.transferir();
    Navigator.pop(context);
    Navigator.pop(context);
  }

  @override
  // ignore: no_logic_in_create_state
  TransferirViewEstado createState() => TransferirViewEstado(erroController: erroController);
}

