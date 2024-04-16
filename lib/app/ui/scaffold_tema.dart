import 'package:flutter/material.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/core/theme/tema.dart';

class ScaffoldTema extends StatelessWidget {
  const ScaffoldTema({super.key, required this.child, this.titulo = 'Banco Imobiliario Digital', this.tema = TemaEnum.principal});
  
  final Widget child;
  final String titulo;
  final TemaEnum tema;

  Color _tema(BuildContext context) {
    return switch (tema) {
      TemaEnum.principal => Theme.of(context).colorScheme.primaryContainer,
      TemaEnum.secundario => Theme.of(context).colorScheme.secondaryContainer,
      TemaEnum.erro => Theme.of(context).colorScheme.errorContainer,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _tema(context),
      appBar: AppBar(
        backgroundColor: _tema(context),
        title: Center(
          child: Text(
            titulo,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        titleSpacing: 0,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: child,
      ),
    );
  }
}