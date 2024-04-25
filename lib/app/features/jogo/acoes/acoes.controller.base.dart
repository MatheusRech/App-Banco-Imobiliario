import 'package:rech_mobile_app_banco_imobiliario/app/models/jogador.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/jogo.controller.dart';

abstract class AcoesControllerBase {
  AcoesControllerBase({required this.jogoController});

  final JogoController jogoController;

  Jogador get jogadorJogando => jogoController.jogadorJogando;
}