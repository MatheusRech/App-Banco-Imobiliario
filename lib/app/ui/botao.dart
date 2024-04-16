import 'package:flutter/material.dart';

enum EstiloBotao {
  principal,
  secundario,
  erro
}

class Botao extends StatelessWidget {
  const Botao({super.key, required this.onPressed, this.texto = '', this.icone, this.tema = EstiloBotao.principal});

  final String texto;
  final void Function() onPressed;
  final IconData? icone;
  final EstiloBotao tema;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
        backgroundColor: switch (tema) {
          EstiloBotao.principal => Theme.of(context).colorScheme.primary,
          EstiloBotao.secundario => Theme.of(context).colorScheme.secondary,
          EstiloBotao.erro => Theme.of(context).colorScheme.error,
        }
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(icone != null)
            Icon(
              icone,
              size: (Theme.of(context).textTheme.labelLarge?.fontSize ?? 0) + 5,
              color: switch (tema) {
                EstiloBotao.principal => Theme.of(context).colorScheme.onPrimary,
                EstiloBotao.secundario => Theme.of(context).colorScheme.onSecondary,
                EstiloBotao.erro => Theme.of(context).colorScheme.onError,
              },
            ),
          if(texto != '')
            Text(
              texto,
              style: Theme.of(context).textTheme.labelLarge?.merge(
                TextStyle(
                  color: switch (tema) {
                    EstiloBotao.principal => Theme.of(context).colorScheme.onPrimary,
                    EstiloBotao.secundario => Theme.of(context).colorScheme.onSecondary,
                    EstiloBotao.erro => Theme.of(context).colorScheme.onError,
                  }
                )
              )
            )
        ],
      )
    );
  }

}