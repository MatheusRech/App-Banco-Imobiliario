import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/botao.dart';

void main() {
  testWidgets('Teste widget (Botao): Texto definido deve ser igual ao iniciado', (tester) async {
    const textoBotao = 'Teste botao';

    await tester.pumpWidget(MaterialApp(home: Scaffold(body: Botao(onPressed: () => {}, texto: textoBotao))));
    
    expect(find.text(textoBotao), findsOneWidget);
  });
  testWidgets('Teste widget (Botao): Icone definido deve ser igual ao iniciado', (tester) async {
    const icone = Icons.add;

    await tester.pumpWidget(MaterialApp(home: Scaffold(body: Botao(onPressed: () => {}, icone: icone))));

    expect(find.byIcon(icone), findsOneWidget);
  });
  testWidgets('Teste widget (Botao): Texto definido deve ser igual ao iniciado e icone tambem', (tester) async {
    const icone = Icons.add;
    const textoBotao = 'Teste botao';

    await tester.pumpWidget(MaterialApp(home: Scaffold(body: Botao(onPressed: () => {}, icone: icone, texto: textoBotao))));

    expect(find.byIcon(icone), findsOneWidget);
    expect(find.text(textoBotao), findsOneWidget);
  });
  testWidgets('Teste widget (Botao): Clique no botão deve alterar o estado da variavel', (tester) async {
    bool executou = false;

    await tester.pumpWidget(MaterialApp(home: Scaffold(body: Botao(onPressed: () => executou = true))));

    await tester.tap(find.byType(ElevatedButton));

    expect(executou, true);
  });
}