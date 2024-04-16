import 'package:flutter/material.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/erro/erro.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogadores/jogadores.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/core/services/injecao_dependencia.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogadores/jogadores.estado.dart';


class JogadoresView extends StatefulWidget {
  JogadoresView({super.key});

  final JogadoresController controller = InjecaoDependencia.obterDependencia<JogadoresController>();
  final ErroController erroController = InjecaoDependencia.obterDependencia<ErroController>();
  
  @override
  JogadoresEstado createState() => JogadoresEstado();
}

