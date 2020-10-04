import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  final String nama;
  final String email;
  @JsonKey(name: 'nomor_telp')
  final String nomorTelp;
  final String alamat;
  final double latitude;
  final double longitude;

  User(
      {this.id,
      this.imageUrl,
      this.nama,
      this.email,
      this.nomorTelp,
      this.alamat,
      this.latitude,
      this.longitude});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
