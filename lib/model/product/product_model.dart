import 'package:flutter_rxdart/model/product/category.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  @JsonKey(name: '_id')
  final String id;
  final Bengkel bengkel;
  final Category kategori;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  final String nama;
  final int harga;
  final int stok;

  ProductModel({
    this.id,
    this.bengkel,
    this.kategori,
    this.imageUrl,
    this.nama,
    this.harga,
    this.stok,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}

@JsonSerializable()
class Bengkel {
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'nama_bengkel')
  final String namaBengkel;

  Bengkel({this.id, this.namaBengkel});

  factory Bengkel.fromJson(Map<String, dynamic> json) =>
      _$BengkelFromJson(json);

  Map<String, dynamic> toJson() => _$BengkelToJson(this);
}
