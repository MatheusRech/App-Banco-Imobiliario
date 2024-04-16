import 'package:flutter/material.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/core/theme/tema.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/jogo.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/core/services/injecao_dependencia.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/routes/rotas.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/botao.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/jogador_escolhido.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/scaffold_tema.dart';

class JogoEscolhaAcaoView extends StatelessWidget {
  JogoEscolhaAcaoView({super.key});

  final controller = InjecaoDependencia.obterDependencia<JogoController>();

  @override
  Widget build(BuildContext context) {
    return ScaffoldTema(
      tema: TemaEnum.secundario,
      titulo: 'Oque deseja fazer?',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Botao(texto: 'Transferir', onPressed: () => Navigator.pushNamed(context, Rotas.jogoTransferir)),
                const SizedBox( height: 10),
                Botao(texto: 'Adicionar fundos', onPressed: () => Navigator.pushNamed(context, Rotas.jogoAdicionarFundos)),
                const SizedBox( height: 10),
                Botao(texto: 'Pagar taxas', onPressed: () => Navigator.pushNamed(context, Rotas.jogoPagarTaxas)),
                const SizedBox( height: 10),
                Botao(texto: 'Voltar', onPressed: () => Navigator.pop(context), tema: EstiloBotao.erro),
              ],
            )
          ),
          JogadorEscolhido(jogador: controller.jogadorJogando)
        ],
      ),
    );
  }
}