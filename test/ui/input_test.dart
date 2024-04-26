import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/ui/input.dart';

void main() {
  testWidgets('Teste widget (Input): Texto inserido deve ser "teste"', (tester) async {
    const textoTeste = 'teste';
    final controllerInput = TextEditingController();

    await tester.pumpWidget(MaterialApp(home: Scaffold(body: Input(controller: controllerInput))));

    await tester.enterText(find.byType(TextField), textoTeste);
    
    expect(controllerInput.text, textoTeste);
  });
  testWidgets('Teste widget (Input): Texto inserido deve ser ""  com filtro de digitos only', (tester) async {
    const textoTeste = 'teste';
    final controllerInput = TextEditingController();

    await tester.pumpWidget(MaterialApp(home: Scaffold(body: Input(controller: controllerInput, inputFormatters: [FilteringTextInputFormatter.digitsOnly]))));

    await tester.enterText(find.byType(TextField), textoTeste);
    
    expect(controllerInput.text, '');
  });
  testWidgets('Teste widget (Input): Texto inserido deve ser "123" com filtro de digitos only', (tester) async {
    const textoTeste = '123';
    final controllerInput = TextEditingController();

    await tester.pumpWidget(MaterialApp(home: Scaffold(body: Input(controller: controllerInput, inputFormatters: [FilteringTextInputFormatter.digitsOnly]))));

    await tester.enterText(find.byType(TextField), textoTeste);
    
    expect(controllerInput.text, textoTeste);
  });
}