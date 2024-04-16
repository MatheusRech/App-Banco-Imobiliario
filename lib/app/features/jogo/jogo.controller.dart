import 'package:mobx/mobx.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/configuracao/configuracao.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogadores/jogadores.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/core/services/injecao_dependencia.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/data/models/jogador.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/resultado/resultado.controller.dart';

part 'jogo.controller.g.dart';

class JogoController = JogoControllerBase with _$JogoController;

abstract class JogoControllerBase with Store {

  final JogadoresController _jogadoresController = InjecaoDependencia.obterDependencia<JogadoresController>();
  final ConfiguracaoController _configuracaoController = InjecaoDependencia.obterDependencia<ConfiguracaoController>();
  final ResultadoController _resultadoController = InjecaoDependencia.obterDependencia<ResultadoController>();

  List<Jogador> get jogadores => _jogadoresController.jogadores;
  
  @observable
  late Jogador _jogadorJogando;
  Jogador get jogadorJogando => _jogadorJogando;


  @action
  void iniciarJogo() {
    for (var jogador in _jogadoresController.jogadores) {
      jogador.transferirFundos(_configuracaoController.valorParaCadaJogador);
    }
  }

  @action
  void definirJogadorJogando(Jogador jogador){
    _jogadorJogando = jogador;
  }

  @action
  void encerrarJogo(){
    jogadores.sort((a,b) => b.capital.compareTo(a.capital));
    _resultadoController.encerrarJogo(jogadores.first, jogadores);
    _jogadoresController.resetar();
    _configuracaoController.resetar();
  }
}