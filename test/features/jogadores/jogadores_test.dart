import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx/mobx.dart' as mobx;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/erro/erro.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogadores/jogadores.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogadores/jogadores.view.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/models/jogador.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/botao.dart';

import 'jogadores_test.mocks.dart';


@GenerateNiceMocks([MockSpec<JogadoresController>(), MockSpec<ErroController>()])
void main() {
  testWidgets('Teste widget (Jogadores): Adiciona o maximo de jogadores e espera que o botão de adicionar não seja encontrado', (tester) async {
    final mockJogadoresController = MockJogadoresController();
    final mockErroController = MockErroController();

    mobx.ObservableList<Jogador> jogadores = mobx.ObservableList<Jogador>();

    when(mockJogadoresController.jogadores).thenReturn(jogadores);
    when(mockJogadoresController.corJogador(any)).thenReturn(Colors.black);
    when(mockJogadoresController.controllersTexto).thenReturn(List.generate(6, (index) => TextEditingController()));
    when(mockJogadoresController.adicionarJogador()).thenAnswer((_) => jogadores.add(Jogador()));

    await tester.pumpWidget(MaterialApp(home: 
      JogadoresView(
        controller: mockJogadoresController,
        erroController: mockErroController,
      )
    ));

    for (var i = 0; i < 6; i++) {
      await tester.tap(find.widgetWithIcon(Botao, Icons.add));
      await tester.pump();
    }

    expect(find.widgetWithIcon(Botao, Icons.add), findsNothing);
  });

  testWidgets('Teste widget (Jogadores): Adiciona um jogador e espera que o botão de remover jogador seja encontrado', (tester) async {
    final mockJogadoresController = MockJogadoresController();
    final mockErroController = MockErroController();

    mobx.ObservableList<Jogador> jogadores = mobx.ObservableList<Jogador>();

    when(mockJogadoresController.jogadores).thenReturn(jogadores);
    when(mockJogadoresController.corJogador(any)).thenReturn(Colors.black);
    when(mockJogadoresController.controllersTexto).thenReturn(List.generate(6, (index) => TextEditingController()));
    when(mockJogadoresController.adicionarJogador()).thenAnswer((_) => jogadores.add(Jogador()));

    await tester.pumpWidget(MaterialApp(home: 
      JogadoresView(
        controller: mockJogadoresController,
        erroController: mockErroController,
      )
    ));

    await tester.tap(find.widgetWithIcon(Botao, Icons.add));
    await tester.pump();

    expect(find.widgetWithIcon(Botao, Icons.remove), findsOneWidget);
  });

  testWidgets('Teste widget (Jogadores): Adiciona um jogador e remove e espera que o botão de remover não seja encontrado', (tester) async {
    final mockJogadoresController = MockJogadoresController();
    final mockErroController = MockErroController();

    mobx.ObservableList<Jogador> jogadores = mobx.ObservableList<Jogador>();

    when(mockJogadoresController.jogadores).thenReturn(jogadores);
    when(mockJogadoresController.corJogador(any)).thenReturn(Colors.black);
    when(mockJogadoresController.controllersTexto).thenReturn(List.generate(6, (index) => TextEditingController()));
    when(mockJogadoresController.adicionarJogador()).thenAnswer((_) => jogadores.add(Jogador()));
    when(mockJogadoresController.removerJogador()).thenAnswer((_) => jogadores.removeLast());

    await tester.pumpWidget(MaterialApp(home: 
      JogadoresView(
        controller: mockJogadoresController,
        erroController: mockErroController,
      )
    ));

    await tester.tap(find.widgetWithIcon(Botao, Icons.add));
    await tester.pump();
    await tester.tap(find.widgetWithIcon(Botao, Icons.remove));
    await tester.pump();

    expect(find.widgetWithIcon(Botao, Icons.remove), findsNothing);
  });

  testWidgets('Teste widget (Jogadores): Adiciona dois jogador e e espera que o botão de proximo seja encontrado e que a mensagem de minimo de jogadores não seja encontrada', (tester) async {
    final mockJogadoresController = MockJogadoresController();
    final mockErroController = MockErroController();

    mobx.ObservableList<Jogador> jogadores = mobx.ObservableList<Jogador>();

    when(mockJogadoresController.jogadores).thenReturn(jogadores);
    when(mockJogadoresController.corJogador(any)).thenReturn(Colors.black);
    when(mockJogadoresController.controllersTexto).thenReturn(List.generate(6, (index) => TextEditingController()));
    when(mockJogadoresController.adicionarJogador()).thenAnswer((_) => jogadores.add(Jogador()));

    await tester.pumpWidget(MaterialApp(home: 
      JogadoresView(
        controller: mockJogadoresController,
        erroController: mockErroController,
      )
    ));

    await tester.tap(find.widgetWithIcon(Botao, Icons.add));
    await tester.pump();
    await tester.tap(find.widgetWithIcon(Botao, Icons.add));
    await tester.pump();
    
    expect(find.widgetWithText(Botao, 'Próximo'), findsOneWidget);
    expect(find.text('Defina ao minimo dois jogadores'), findsNothing);
  });
}