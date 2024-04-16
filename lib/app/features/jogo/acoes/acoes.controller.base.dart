import 'package:rech_mobile_app_banco_imobiliario/app/core/services/injecao_dependencia.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/data/models/jogador.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/jogo.controller.dart';

mixin AcoesControllerBase {
  final JogoController jogoController = InjecaoDependencia.obterDependencia<JogoController>();

  Jogador get jogadorJogando => jogoController.jogadorJogando;
}