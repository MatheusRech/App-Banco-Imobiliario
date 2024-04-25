// Mocks generated by Mockito 5.4.4 from annotations
// in rech_mobile_app_banco_imobiliario/test/features/jogo/acoes/adicionar_fundos/adicionar_fundos.teste.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i2;
import 'package:mobx/mobx.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:rech_mobile_app_banco_imobiliario/app/features/erro/erro.controller.dart'
    as _i7;
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/acoes/adicionar_fundos/adicionar_fundos.controller.dart'
    as _i6;
import 'package:rech_mobile_app_banco_imobiliario/app/features/jogo/jogo.controller.dart'
    as _i3;
import 'package:rech_mobile_app_banco_imobiliario/app/models/jogador.dart'
    as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeTextEditingController_0 extends _i1.SmartFake
    implements _i2.TextEditingController {
  _FakeTextEditingController_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeJogoController_1 extends _i1.SmartFake
    implements _i3.JogoController {
  _FakeJogoController_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeJogador_2 extends _i1.SmartFake implements _i4.Jogador {
  _FakeJogador_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeReactiveContext_3 extends _i1.SmartFake
    implements _i5.ReactiveContext {
  _FakeReactiveContext_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AdicionarFundosController].
///
/// See the documentation for Mockito's code generation for more information.
class MockAdicionarFundosController extends _i1.Mock
    implements _i6.AdicionarFundosController {
  @override
  _i2.TextEditingController get controllerInput => (super.noSuchMethod(
        Invocation.getter(#controllerInput),
        returnValue: _FakeTextEditingController_0(
          this,
          Invocation.getter(#controllerInput),
        ),
        returnValueForMissingStub: _FakeTextEditingController_0(
          this,
          Invocation.getter(#controllerInput),
        ),
      ) as _i2.TextEditingController);

  @override
  _i3.JogoController get jogoController => (super.noSuchMethod(
        Invocation.getter(#jogoController),
        returnValue: _FakeJogoController_1(
          this,
          Invocation.getter(#jogoController),
        ),
        returnValueForMissingStub: _FakeJogoController_1(
          this,
          Invocation.getter(#jogoController),
        ),
      ) as _i3.JogoController);

  @override
  _i4.Jogador get jogadorJogando => (super.noSuchMethod(
        Invocation.getter(#jogadorJogando),
        returnValue: _FakeJogador_2(
          this,
          Invocation.getter(#jogadorJogando),
        ),
        returnValueForMissingStub: _FakeJogador_2(
          this,
          Invocation.getter(#jogadorJogando),
        ),
      ) as _i4.Jogador);

  @override
  _i5.ReactiveContext get context => (super.noSuchMethod(
        Invocation.getter(#context),
        returnValue: _FakeReactiveContext_3(
          this,
          Invocation.getter(#context),
        ),
        returnValueForMissingStub: _FakeReactiveContext_3(
          this,
          Invocation.getter(#context),
        ),
      ) as _i5.ReactiveContext);

  @override
  void adicionar() => super.noSuchMethod(
        Invocation.method(
          #adicionar,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [ErroController].
///
/// See the documentation for Mockito's code generation for more information.
class MockErroController extends _i1.Mock implements _i7.ErroController {
  @override
  set mensagem(String? value) => super.noSuchMethod(
        Invocation.setter(
          #mensagem,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.ReactiveContext get context => (super.noSuchMethod(
        Invocation.getter(#context),
        returnValue: _FakeReactiveContext_3(
          this,
          Invocation.getter(#context),
        ),
        returnValueForMissingStub: _FakeReactiveContext_3(
          this,
          Invocation.getter(#context),
        ),
      ) as _i5.ReactiveContext);

  @override
  void registrarContexto(_i2.BuildContext? contexto) => super.noSuchMethod(
        Invocation.method(
          #registrarContexto,
          [contexto],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void capturarErro(_i2.FlutterErrorDetails? detalhes) => super.noSuchMethod(
        Invocation.method(
          #capturarErro,
          [detalhes],
        ),
        returnValueForMissingStub: null,
      );
}
