import 'package:flutter/material.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/configuracao/configuracao.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/configuracao/configuracao.estado.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/erro/erro.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/jogo.controller.dart';

class ConfiguracaoView extends StatefulWidget {
  const ConfiguracaoView({super.key, required this.controllerConfiguracao, required this.controllerJogo, required this.erroController});
  
  final ConfiguracaoController controllerConfiguracao;
  final JogoController controllerJogo;
  final ErroController erroController;

  @override
  // ignore: no_logic_in_create_state
  ConfiguracaoEstado createState() => ConfiguracaoEstado(erroController: erroController); 
}