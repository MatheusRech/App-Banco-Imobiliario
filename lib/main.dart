import 'package:flutter/material.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/core/services/injecao_dependencia.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/core/theme/tema.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/routes/rotas.dart';

void main() {

  InjecaoDependencia.registrarDependencias();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {    
    return MaterialApp(
     routes: Rotas().compilar(),
     debugShowCheckedModeBanner: false,
     theme: Tema().tema,
    );
  }
}
