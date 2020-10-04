// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['_id'] as String,
    imageUrl: json['image_url'] as String,
    nama: json['nama'] as String,
    email: json['email'] as String,
    nomorTelp: json['nomor_telp'] as String,
    alamat: json['alamat'] as String,
    latitude: (json['latitude'] as num)?.toDouble(),
    longitude: (json['longitude'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      '_id': instance.id,
      'image_url': instance.imageUrl,
      'nama': instance.nama,
      'email': instance.email,
      'nomor_telp': instance.nomorTelp,
      'alamat': instance.alamat,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
