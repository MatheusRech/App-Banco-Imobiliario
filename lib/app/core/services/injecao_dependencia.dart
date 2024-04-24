import 'package:get_it/get_it.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/configuracao/configuracao.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/erro/erro.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/resultado/resultado.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogadores/jogadores.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/adicionar_fundos/adicionar_fundos.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/pagar_taxas/pagar_taxas.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/transferir/transferir.controller.dart';
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/jogo.controller.dart';

final GetIt provider = GetIt.instance;

registrarDependencias() {
  provider.registerLazySingleton<ResultadoController>(() => ResultadoController());
  provider.registerLazySingleton<JogadoresController>(() => JogadoresController());
  provider.registerLazySingleton<ConfiguracaoController>(() => ConfiguracaoController());
  provider.registerLazySingleton<JogoController>(() => JogoController(
    jogadoresController: provider<JogadoresController>(),
    configuracaoController: provider<ConfiguracaoController>(),
    resultadoController: provider<ResultadoController>()
  ));
  provider.registerLazySingleton<ErroController>(() => ErroController());   
    
  provider.registerFactory(() => AdicionarFundosController(
    jogoController: provider<JogoController>()
  ));
  provider.registerFactory(() => PagarTaxasController(
    jogoController: provider<JogoController>()
  ));
  provider.registerFactory(() => JogoTransferirController(
    jogoController: provider<JogoController>()
  ));
}

T obterDependencia<T extends Object>(){
  return provider<T>();
}