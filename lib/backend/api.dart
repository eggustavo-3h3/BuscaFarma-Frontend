import 'package:buscafarma/backend/model/categoria.dart';
import 'package:buscafarma/backend/model/medicamento.dart';
import 'package:buscafarma/backend/model/reserva.dart';
import 'package:buscafarma/backend/model/usuario.dart';
import 'package:buscafarma/backend/request/credencial.dart';
import 'package:buscafarma/backend/request/nova_reserva.dart';
import 'package:buscafarma/backend/request/novo_medicamento.dart';
import 'package:buscafarma/backend/request/update_reserva.dart';
import 'package:buscafarma/backend/response/message.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi(baseUrl: "https://buscafarma-api.tccnapratica.com.br")
abstract class API {
  factory API(Dio dio, {String? baseUrl}) = _API;

  @POST("/autenticar")
  Future<String> autentica(@Body() Credencial credencial);

  @GET("/usuario/id/{id}")
  Future<Usuario> me(@Path() String id);

  @GET("/usuario/cpf/{cpf}")
  Future<Usuario> getByCPF(@Path() String cpf);

  @GET("/categoria/listar")
  Future<List<Categoria>> listaCategorias();

  @GET("/medicamento/listar")
  Future<List<Medicamento>> listaMedicamentos();

  @POST("/medicamento/adicionar")
  Future<Message> adicionarMedicamento(@Body() NovoMedicamento request);

  @GET("/reserva/listar")
  Future<List<Reserva>> listaReservas();

  @PUT("/reserva/atualizar/{id}")
  Future<Message> updateReserva(@Path() String id, @Body() UpdateReserva update);

  @GET("/reserva/usuario/{id}")
  Future<List<Reserva>> listaReservasPorUsuario(@Path() String id);

  @POST("/reserva/adicionar")
  Future<Message> criaReserva(@Body() NovaReserva novaReserva);

  static API? _instance;

  static API get instance {
    return _instance ??= API(GetIt.I<Dio>());
  }
}
