
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/erro/erro.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/adicionar_fundos/adicionar_fundos.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/adicionar_fundos/adicionar_fundos.view.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/models/jogador.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/jogador_escolhido.dart';

import 'adicionar_fundos.teste.mocks.dart';

@GenerateNiceMocks([MockSpec<AdicionarFundosController>(), MockSpec<ErroController>()])
void main(){
  testWidgets('Teste widget (AdicionarFundos): Espera que o jogador informado seja encontrado na tela', (tester) async {
    final mockAdicionarFundosController = MockAdicionarFundosController();
    final mockErroController = MockErroController();

    final jogadorJogando = Jogador();
    jogadorJogando.iniciar('Tester', Colors.black);

    when(mockAdicionarFundosController.controllerInput).thenReturn(TextEditingController());
    when(mockAdicionarFundosController.jogadorJogando).thenReturn(jogadorJogando);

    await tester.pumpWidget(MaterialApp(home: 
      JogoAdicionarFundosView(
        controller: mockAdicionarFundosController,
        erroController: mockErroController,
      )
    ));

    expect(find.widgetWithText(JogadorEscolhido, jogadorJogando.nome), findsOneWidget);
  });
}