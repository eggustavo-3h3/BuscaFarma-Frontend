import 'package:json_annotation/json_annotation.dart';

part 'categoria.g.dart';

@JsonSerializable()
class Categoria {
  final String id;
  final String descricao;

  Categoria(this.id, this.descricao);

  @override
  String toString() {
    return descricao;
  }

  factory Categoria.fromJson(Map<String, dynamic> json) =>
      _$CategoriaFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriaToJson(this);
}
