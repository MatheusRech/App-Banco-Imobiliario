
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/erro/erro.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/pagar_taxas/pagar_taxas.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/pagar_taxas/pagar_taxas.view.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/models/jogador.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/jogador_escolhido.dart';

import 'pagar_taxas.teste.mocks.dart';

@GenerateNiceMocks([MockSpec<PagarTaxasController>(), MockSpec<ErroController>()])
void main() {
  testWidgets('Teste widget (PagarTaxas): Espera que o jogador informado seja encontrado na tela', (tester) async {
    final mockPagarTaxasController = MockPagarTaxasController();
    final mockErroController = MockErroController();

    final jogadorJogando = Jogador();
    jogadorJogando.iniciar('Tester', Colors.black);

    when(mockPagarTaxasController.controllerInput).thenReturn(TextEditingController());
    when(mockPagarTaxasController.jogadorJogando).thenReturn(jogadorJogando);

    await tester.pumpWidget(MaterialApp(home: 
      JogoPagarTaxasView(
        controller: mockPagarTaxasController,
        erroController: mockErroController,
      )
    ));

    expect(find.widgetWithText(JogadorEscolhido, jogadorJogando.nome), findsOneWidget);
  });
}