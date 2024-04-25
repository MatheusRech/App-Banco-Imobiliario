import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/configuracao/configuracao.view.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/erro/erro-stateful.view.base.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/routes/rotas.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/botao.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/scaffold_tema.dart';

class ConfiguracaoEstado extends ErroViewStatefulBase<ConfiguracaoView> {
  ConfiguracaoEstado({required super.erroController});

  void iniciar(BuildContext context) {
    widget.controllerJogo.iniciarJogo();
    Navigator.pushNamed(context, Rotas.jogoEscolhaJogador);
  }

  @override
  Function(BuildContext p1) get builder => (context) =>
    ScaffoldTema(
      titulo: 'Defina a configuração',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Escolha um valor inicial para os jogadores',
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10,),
          Expanded(child:
            Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    SizedBox(
                      width: 155,
                      child: Botao(texto: 'R\$ 5.000,00', onPressed: () => widget.controllerConfiguracao.definirValorParaCadaJogador(5000), tema: EstiloBotao.secundario,),
                    ),
                    SizedBox(
                      width: 155,
                      child: Botao(texto: 'R\$ 10.000,00', onPressed: () => widget.controllerConfiguracao.definirValorParaCadaJogador(10000), tema: EstiloBotao.secundario),
                    ),
                    SizedBox(
                      width: 155,
                      child: Botao(texto: 'R\$ 15.000,00', onPressed: () => widget.controllerConfiguracao.definirValorParaCadaJogador(15000), tema: EstiloBotao.secundario),
                    ),
                    SizedBox(
                      width: 155,
                      child: Botao(texto: 'R\$ 20.000,00', onPressed: () => widget.controllerConfiguracao.definirValorParaCadaJogador(20000), tema: EstiloBotao.secundario),
                    ),
                    SizedBox(
                      width: 155,
                      child: Botao(texto: 'R\$ 25.000,00', onPressed: () => widget.controllerConfiguracao.definirValorParaCadaJogador(25000), tema: EstiloBotao.secundario),
                    ),
                    SizedBox(
                      width: 155,
                      child: Botao(texto: 'R\$ 30.000,00', onPressed: () => widget.controllerConfiguracao.definirValorParaCadaJogador(30000), tema: EstiloBotao.secundario),
                    ),
                    SizedBox(
                      width: 155,
                      child: Botao(texto: 'R\$ 35.000,00', onPressed: () => widget.controllerConfiguracao.definirValorParaCadaJogador(35000), tema: EstiloBotao.secundario),
                    ),
                  ],
                ),
          ),
          const SizedBox(height: 10),
          Observer(builder: (_) => 
            Text(
              'Valor configurado R\$ ${widget.controllerConfiguracao.valorParaCadaJogador}',
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            )
          ),
          const SizedBox(height: 10,),
          Observer(
            builder: (_) {
              if(widget.controllerConfiguracao.valorParaCadaJogador == 0){
                return Text(
                  'Defina um valor inicial',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center
                );
              }else{
                return Botao(texto: 'Iniciar', onPressed: () => iniciar(context), tema: EstiloBotao.secundario);
              }
            }
          )
        ]
      ),
    );
}