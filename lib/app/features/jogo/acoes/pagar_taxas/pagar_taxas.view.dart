import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/core/theme/tema.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/erro/erro-stateless.view.base.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/pagar_taxas/pagar_taxas.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/botao.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/input.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/jogador_escolhido.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/scaffold_tema.dart';

class JogoPagarTaxasView extends ErroViewStatelessBase {

  const JogoPagarTaxasView({super.key, required this.controller, required super.erroController});

  final PagarTaxasController controller;

  void pagar(BuildContext context) {
    controller.pagar();
    Navigator.pop(context);
    Navigator.pop(context);
  }
  
  @override
  Function(BuildContext p1) get builder => (context) =>
  ScaffoldTema(
    titulo: 'Pagar taxas',
    tema: TemaEnum.secundario,
    child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Informe o valor:',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Input(
                  controller: controller.controllerInput,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  keyboardType: TextInputType.number
                ),
                const SizedBox(height: 10),
                Botao(texto: 'Pagar', onPressed: () => pagar(context)),
                const SizedBox(height: 10),
                Botao(texto: 'Cancelar', onPressed: () => Navigator.pop(context), tema: EstiloBotao.erro),
              ],
            ),
          ),
          const SizedBox(height: 10),
          JogadorEscolhido(jogador: controller.jogadorJogando)
        ],
      )
  );
}