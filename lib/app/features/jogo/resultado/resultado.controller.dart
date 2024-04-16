import 'package:rech_mobile_app_banco_imobiliario/app/data/models/jogador.dart';

class ResultadoController {
  late List<Jogador> _jogadores;
  List<Jogador> get jogadores => _jogadores;

  late Jogador _milionario;
  Jogador get milionario => _milionario;

  void encerrarJogo(Jogador jogadorGanhador, List<Jogador> jogadores) {
    _jogadores = jogadores;
    _milionario = jogadorGanhador;
  }
}