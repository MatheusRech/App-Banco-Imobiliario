import 'package:mobx/mobx.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/configuracao/configuracao.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogadores/jogadores.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/models/jogador.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/resultado/resultado.controller.dart';

part 'jogo.controller.g.dart';

class JogoController = JogoControllerBase with _$JogoController;

abstract class JogoControllerBase with Store {
  JogoControllerBase({required this.jogadoresController, required this.configuracaoController, required this.resultadoController});

  final JogadoresController jogadoresController;
  final ConfiguracaoController configuracaoController;
  final ResultadoController resultadoController;

  List<Jogador> get jogadores => jogadoresController.jogadores;
  
  @observable
  late Jogador _jogadorJogando;
  Jogador get jogadorJogando => _jogadorJogando;


  @action
  void iniciarJogo() {
    for (var jogador in jogadoresController.jogadores) {
      jogador.transferirFundos(configuracaoController.valorParaCadaJogador);
    }
  }

  @action
  void definirJogadorJogando(Jogador jogador){
    _jogadorJogando = jogador;
  }

  @action
  void encerrarJogo(){
    jogadores.sort((a,b) => b.capital.compareTo(a.capital));
    resultadoController.encerrarJogo(jogadores.first, jogadores);
    jogadoresController.resetar();
    configuracaoController.resetar();
  }
}