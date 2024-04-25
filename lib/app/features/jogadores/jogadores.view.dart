import 'package:flutter/material.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/erro/erro.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogadores/jogadores.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogadores/jogadores.estado.dart';


class JogadoresView extends StatefulWidget {
  const JogadoresView({super.key, required this.controller, required this.erroController});

  final JogadoresController controller;
  final ErroController erroController;
  
  @override
  JogadoresEstado createState() => JogadoresEstado();
}

