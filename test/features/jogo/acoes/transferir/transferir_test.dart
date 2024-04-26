import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/erro/erro.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/transferir/transferir.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/transferir/transferir.view.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/models/jogador.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/jogador_escolhido.dart';

import 'transferir_test.mocks.dart';

@GenerateNiceMocks([MockSpec<JogoTransferirController>(), MockSpec<ErroController>()])
void main(){
  testWidgets('Teste widget (JogoTransferir): Adiciona uma lista de jogadores para transferir e espera que todos os jogadores estejam na tela', (tester) async {
    final mockJogoTransferirController = MockJogoTransferirController();
    final mockErroController = MockErroController();

    final jogadorJogador = Jogador();
    jogadorJogador.iniciar('Jogador jogando', Colors.black);

    final jogadoresTransferir = List<Jogador>.generate(4, (index) {
      final jogador = Jogador();
      jogador.iniciar('Jogador ${index+1}', Colors.black);
      return jogador;
    });

    when(mockJogoTransferirController.jogadorJogando).thenReturn(jogadorJogador);
    when(mockJogoTransferirController.jogadoresDisponiveisParaTransferir).thenReturn(jogadoresTransferir);
    when(mockJogoTransferirController.controllerInput).thenReturn(TextEditingController());

    await tester.pumpWidget(MaterialApp(home: 
      JogoTransferirView(
        controller: mockJogoTransferirController,
        erroController: mockErroController,
      )
    ));

    expect(find.widgetWithText(JogadorEscolhido, jogadorJogador.nome), findsOneWidget);

    for (var jogador in jogadoresTransferir) {
      expect(find.text(jogador.nome), findsOne);
    }
  });
}