
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogadores/jogadores.view.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/botao.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/input.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/scaffold_tema.dart';

class JogadoresEstado extends State<JogadoresView> {
  @override
  Widget build(BuildContext context) {
    widget.erroController.registrarContexto(context);

    return ScaffoldTema(
      titulo: 'Defina os jogadores',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: Observer(
            builder: (context) => 
              ListView.builder(
                itemCount: widget.controller.jogadores.length,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: widget.controller.corJogador(index),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text(
                          '${index+1}º',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Input(controller: widget.controller.controllersTexto[index])
                      )
                    ],
                  ),
                ),
              )
            )
          ),
          const SizedBox(height: 10),
          Observer(builder: (_) {
            // ignore: prefer_const_constructors
            var coluna = Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // ignore: prefer_const_literals_to_create_immutables
              children: [],
            );

            if(widget.controller.jogadores.length < 6) {
              coluna.children.add(Botao(icone: Icons.add, onPressed: widget.controller.adicionarJogador, tema: EstiloBotao.secundario));
              coluna.children.add(const SizedBox(height: 10));
            }

            if(widget.controller.jogadores.isNotEmpty) {
              coluna.children.add(Botao(icone: Icons.remove, onPressed: widget.controller.removerJogador, tema: EstiloBotao.secundario));
              coluna.children.add(const SizedBox(height: 10));
            }

            if(widget.controller.jogadores.length > 1){
              coluna.children.add(Botao(texto: 'Próximo', onPressed: () => widget.controller.definirJogadores(context), tema: EstiloBotao.secundario,));
            }else{
              coluna.children.add(Center(child: Text('Defina ao minimo dois jogadores', style: Theme.of(context).textTheme.labelMedium)));
            }

            return coluna;
          }),
        ],
      ),
    );
  }
}