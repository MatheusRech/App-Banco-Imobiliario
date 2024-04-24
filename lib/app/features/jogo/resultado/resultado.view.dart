import 'package:flutter/material.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/resultado/resultado.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/routes/rotas.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/botao.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/scaffold_tema.dart';

class JogoResultadoView extends StatelessWidget {

  const JogoResultadoView({super.key, required this.controller});

  final ResultadoController controller;

  @override
  Widget build(BuildContext context) {
    return ScaffoldTema(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Milionario ganhador',
                  style: Theme.of(context).textTheme.titleMedium?.merge(const TextStyle(
                    shadows: [
                      Shadow(color: Color.fromARGB(255, 0, 0, 0), offset: Offset(0,2), blurRadius: 1)
                    ],
                  )),
                  textAlign: TextAlign.center,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Text(
                    controller.milionario.nome,
                    style: Theme.of(context).textTheme.titleLarge?.merge(const TextStyle(
                    shadows: [
                      Shadow(color: Color.fromARGB(255, 0, 0, 0), offset: Offset(0,2), blurRadius: 1),
                      Shadow(color: Color.fromARGB(172, 0, 0, 0), offset: Offset(0,4), blurRadius: 3),
                      Shadow(color: Color.fromARGB(77, 0, 0, 0), offset: Offset(0,6), blurRadius: 6)
                    ],
                  )),
                    textAlign: TextAlign.center,
                  ),
                ),
                for (var i = 0; i < controller.jogadores.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      '${i+1}º ${controller.jogadores[i].nome} - R\$ ${controller.jogadores[i].capital}',
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          Botao(texto: 'Iniciar nova partida', onPressed: () => Navigator.pushNamedAndRemoveUntil(context, Rotas.home, (r) => false), tema: EstiloBotao.secundario,)
        ],
      )
    );
  }

}