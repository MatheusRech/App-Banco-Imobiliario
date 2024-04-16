import 'package:get_it/get_it.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/configuracao/configuracao.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/erro/erro.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/resultado/resultado.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogadores/jogadores.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/adicionar_fundos/adicionar_fundos.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/pagar_taxas/pagar_taxas.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/transferir/transferir.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/jogo.controller.dart';

class InjecaoDependencia {
  static final GetIt _provider = GetIt.instance;
  
  static void registrarDependencias() {
    _provider.registerSingleton(ResultadoController());
    _provider.registerSingleton(JogadoresController());
    _provider.registerSingleton(ConfiguracaoController());
    _provider.registerSingleton(JogoController());
    _provider.registerSingleton(ErroController());
   
    
    _provider.registerFactory(() => AdicionarFundosController());
    _provider.registerFactory(() => PagarTaxasController());
    _provider.registerFactory(() => JogoTransferirController());
  }

  static T obterDependencia<T extends Object>() {
    return _provider.get<T>();
  }
}