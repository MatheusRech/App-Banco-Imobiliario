import 'package:flutter/material.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/routes/rotas.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/botao.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/scaffold_tema.dart';

class HomeView extends StatelessWidget {
  
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldTema(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Icon(
              Icons.point_of_sale,
              color: Theme.of(context).colorScheme.onPrimary,
              size: 78,
            ),
          ),
          Botao(texto: 'Iniciar', onPressed: () => {Navigator.pushNamed(context, Rotas.escolherJogadores)}, tema: EstiloBotao.secundario,),
        ]
      ),
    );
  }

}