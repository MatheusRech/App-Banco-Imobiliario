import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/core/theme/tema.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/erro/erro-stateful.view.base.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/transferir/transferir.view.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/botao.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/input.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/jogador_escolhido.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/scaffold_tema.dart';

class TransferirViewEstado extends ErroViewStatefulBase<JogoTransferirView> {
  TransferirViewEstado({required super.erroController});

  @override
  Function(BuildContext p1) get builder => (context) =>
    ScaffoldTema(
      tema: TemaEnum.secundario,
      titulo: 'Transferir',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 10),
          Text(
            'Escolha o jogador que vai receber a transferência:',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Expanded(
            child: ListView(
              children: [
                for(var jogador in widget.controller.jogadoresDisponiveisParaTransferir)
                  Observer(
                    builder: (_) => GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: jogador.cor,
                          borderRadius: BorderRadius.circular(8),
                          border: widget.controller.jogadorTransferir == jogador ? Border.all( color: const Color.fromARGB(255, 255, 255, 255), width: 3) : null
                        ),
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              jogador.nome,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'R\$ ${jogador.capital}',
                              style: Theme.of(context).textTheme.bodyMedium,
                            )
                          ],
                        ),
                      ),
                      onTap: () => widget.controller.definirJogadorTransferir(jogador),
                    ),
                  ),
              ],
            )
          ),
          const SizedBox(height: 10),
          Text(
            'Informe o valor:',
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Input(
            controller: widget.controller.controllerInput,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly
            ],
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 10),
          Botao(texto: 'Transferir', onPressed: () => widget.transferir(context)),
          const SizedBox(height: 10),
          Botao(texto: 'Cancelar', onPressed: () => Navigator.pop(context), tema: EstiloBotao.erro),
          const SizedBox(height: 10),
          JogadorEscolhido(jogador: widget.controller.jogadorJogando)
         ],
      ),
    );
}