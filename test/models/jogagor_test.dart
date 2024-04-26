import 'package:flutter/material.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/models/jogador.dart';
import 'package:test/test.dart';

void main() {
  group('testes_jogador', () => {
    test('Teste unitario (Jogador): Transferir fundos, capital deve ser 3000', () {
      final jogador = Jogador();

      jogador.transferirFundos(3000);

      expect(jogador.capital, 3000);
    }),
    
    test('Teste unitario (Jogador): Transferir valor negativo deve lançar erro', () {
      final jogador = Jogador();

      expect(() => jogador.transferirFundos(-3000), throwsA('Não é possivel transferir valores zerados ou negativos'));
    }),
    test('Teste unitario (Jogador): Descontar valor, capital deve ser -3000', () {
      final jogador = Jogador();

      jogador.descontarFundos(3000);

      expect(jogador.capital, -3000);
    }),
    test('Teste unitario (Jogador): Descontar valor negativo deve lançar erro', () {
      final jogador = Jogador();

      expect(() => jogador.descontarFundos(-3000), throwsA('Não é possivel descontar valores zerados ou negativos'));
    }),
    test('Teste unitario (Jogador): Transferir fundos e descontar fundos, capital deve ser 5000', () {
      final jogador = Jogador();

      jogador.transferirFundos(25000);
      jogador.transferirFundos(5000);
      jogador.descontarFundos(25000);

      expect(jogador.capital, 5000);
    }),
    test('Teste unitario (Jogador): Iniciar jogador, nome do jogador deve ser "Player teste" e cor branca', () {
      final jogador = Jogador();
      const corJogador = Colors.white;
      const nomeJogador = 'Player teste';

      jogador.iniciar(nomeJogador, corJogador);

      expect(jogador.nome, nomeJogador);
      expect(jogador.cor, corJogador);
    })
  });
}