
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/resultado/resultado.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/resultado/resultado.view.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/models/jogador.dart';

import 'resultado.test.mocks.dart';

@GenerateNiceMocks([MockSpec<ResultadoController>()])
void main() {
  testWidgets('Teste widget (Resultado): Teste da lista de jogadores espera que todos os jogadores informados estejam aparecendo', (tester) async {
    final mockResultadoController = MockResultadoController();

    final milionario = Jogador();
    milionario.iniciar('Teste', Colors.black);
    milionario.transferirFundos(5000);

    final jogadorDois = Jogador();
    jogadorDois.iniciar('Teste 2', Colors.black);
    
    final jogadorTres = Jogador();
    jogadorTres.iniciar('Teste 3', Colors.black);
    jogadorTres.transferirFundos(200);

    when(mockResultadoController.milionario).thenReturn(milionario);
    when(mockResultadoController.jogadores).thenReturn(List<Jogador>.from([milionario, jogadorTres, jogadorDois]));

    await tester.pumpWidget(MaterialApp(home: 
      JogoResultadoView(
        controller: mockResultadoController,
      )
    ));

    expect(find.text(milionario.nome), findsOneWidget);
    expect(find.text('1º ${milionario.nome} - R\$ ${milionario.capital}'), findsOneWidget);
    expect(find.text('2º ${jogadorTres.nome} - R\$ ${jogadorTres.capital}'), findsOneWidget);
    expect(find.text('3º ${jogadorDois.nome} - R\$ ${jogadorDois.capital}'), findsOneWidget);
  });
}