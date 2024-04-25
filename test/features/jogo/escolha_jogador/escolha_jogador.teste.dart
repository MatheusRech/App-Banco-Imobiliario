import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/escolha_jogador/escolha_jogador.view.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/jogo.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/models/jogador.dart';
import 'escolha_jogador.teste.mocks.dart';

@GenerateNiceMocks([MockSpec<JogoController>()])
void main() {
  testWidgets('Teste widget (EscolhaJogador): Teste defini os jogadores e espera que todos estejam na tela', (tester) async {
    final mockJogoController = MockJogoController();

    const double valorJogadores = 200;

    when(mockJogoController.jogadores).thenReturn(List<Jogador>.generate(4, (index) {
      final jogador = Jogador();
      jogador.iniciar('Jogador ${index+1}', Colors.black);
      jogador.transferirFundos(valorJogadores);
      return jogador;
    }));

    await tester.pumpWidget(MaterialApp(home: 
      JogoEscolhaJogadorView(
        controller: mockJogoController,
      )
    ));

    expect(find.text('R\$ $valorJogadores'), findsExactly(4));

    for (var i = 0; i < 4; i++) {
      expect(find.text('Jogador ${i+1}'), findsOne);
    }
  });
}