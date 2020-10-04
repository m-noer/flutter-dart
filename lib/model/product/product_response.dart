import 'package:flutter_rxdart/model/product/product_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_response.g.dart';

@JsonSerializable()
class ProductResponse {
  final int status;
  final String message;
  final int jumlah;
  final List<ProductModel> data;

  ProductResponse({this.status, this.message, this.jumlah, this.data});

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductResponseToJson(this);
}
