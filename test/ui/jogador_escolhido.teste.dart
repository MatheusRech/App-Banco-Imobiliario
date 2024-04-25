import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/models/jogador.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/jogador_escolhido.dart';

void main() {
  testWidgets('Teste widget (JogadorEscolhido): Jogador definido deve ser exibido', (tester) async {
    final jogador = Jogador();
    const nomejogador = 'Jogador teste';

    jogador.iniciar(nomejogador, Colors.black);
    jogador.transferirFundos(5000);

    await tester.pumpWidget(MaterialApp(home: Scaffold(body: JogadorEscolhido(jogador: jogador))));

    expect(find.text(nomejogador), findsOneWidget);
    expect(find.text('R\$ ${jogador.capital}'), findsOneWidget);
  });
}