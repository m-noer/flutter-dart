// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return ProductModel(
    id: json['_id'] as String,
    bengkel: json['bengkel'] == null
        ? null
        : Bengkel.fromJson(json['bengkel'] as Map<String, dynamic>),
    kategori: json['kategori'] == null
        ? null
        : Category.fromJson(json['kategori'] as Map<String, dynamic>),
    imageUrl: json['image_url'] as String,
    nama: json['nama'] as String,
    harga: json['harga'] as int,
    stok: json['stok'] as int,
  );
}

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'bengkel': instance.bengkel,
      'kategori': instance.kategori,
      'image_url': instance.imageUrl,
      'nama': instance.nama,
      'harga': instance.harga,
      'stok': instance.stok,
    };

Bengkel _$BengkelFromJson(Map<String, dynamic> json) {
  return Bengkel(
    id: json['_id'] as String,
    namaBengkel: json['nama_bengkel'] as String,
  );
}

Map<String, dynamic> _$BengkelToJson(Bengkel instance) => <String, dynamic>{
      '_id': instance.id,
      'nama_bengkel': instance.namaBengkel,
    };
