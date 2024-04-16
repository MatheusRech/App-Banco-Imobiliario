import 'package:flutter/material.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/configuracao/configuracao.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/core/services/injecao_dependencia.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/configuracao/configuracao.estado.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/jogo.controller.dart';

class ConfiguracaoView extends StatefulWidget {
  ConfiguracaoView({super.key});
  
  final ConfiguracaoController controllerConfiguracao = InjecaoDependencia.obterDependencia<ConfiguracaoController>();
  final JogoController controllerJogo = InjecaoDependencia.obterDependencia<JogoController>();

  @override
  ConfiguracaoEstado createState() => ConfiguracaoEstado(); 
}