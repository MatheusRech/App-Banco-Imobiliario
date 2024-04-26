import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/configuracao/configuracao.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/configuracao/configuracao.view.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/erro/erro.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/jogo.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/botao.dart';

import 'configuracao_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ConfiguracaoController>(), MockSpec<JogoController>(), MockSpec<ErroController>()])
void main() {
  testWidgets('Teste widget (Configuracao): Teste botao troca valor configuracao', (tester) async {

    final mockConfiguracaoController = MockConfiguracaoController();
    final mockJogoController = MockJogoController();
    final mockErroController = MockErroController();

    double valorParaCadaJogador = 0;
    const double valorExperadoConfi = 5000;

    when(mockConfiguracaoController.definirValorParaCadaJogador(any)).thenAnswer((realInvocation) {
      valorParaCadaJogador = valorExperadoConfi;
    });

    await tester.pumpWidget(MaterialApp(
      home: ConfiguracaoView(
        controllerConfiguracao: mockConfiguracaoController,
        controllerJogo: mockJogoController,
        erroController: mockErroController,
      )
    ));

    final botoes = find.byType(Botao);

    expect(botoes, findsAny);

    await tester.tap(botoes.first);
    await tester.pump();

    expect(valorParaCadaJogador, valorExperadoConfi);
  });
}