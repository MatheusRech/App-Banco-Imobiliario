import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/core/theme/tema.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/data/models/jogador.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/escolha_jogador/escolha_jogador.view.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/routes/rotas.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/botao.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/scaffold_tema.dart';

class JogoEscolhaJogadorViewEstado extends State<JogoEscolhaJogadorView> {
  
  void definirJogador(Jogador jogador, BuildContext context) {
    widget.controller.definirJogadorJogando(jogador);
    Navigator.pushNamed(context, Rotas.jogoEscolhaAcao);
  }

  void encerrarJogo(BuildContext context){
    widget.controller.encerrarJogo();
    Navigator.pushNamedAndRemoveUntil(context, Rotas.jogoResultado, (r) => false);
  }

  @override
  Widget build(BuildContext context) { 
    return ScaffoldTema(
      titulo: 'Quem está jogando?',
      tema: TemaEnum.secundario,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: 
            Observer(
              builder: (_) => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for(var jogador in widget.controller.jogadores)
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: jogador.cor,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              jogador.nome,
                              style: Theme.of(context).textTheme.labelLarge,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'R\$ ${jogador.capital}',
                              style: Theme.of(context).textTheme.labelLarge,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      onTap: () => definirJogador(jogador, context)
                    )
                ],
              ),
            )
          ),
          const SizedBox(height: 10),
          Botao(texto: 'Finalizar jogo', onPressed: () => encerrarJogo(context))
        ],
      ),
    );
  }
}