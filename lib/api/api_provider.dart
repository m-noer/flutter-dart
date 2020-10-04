import 'package:dio/dio.dart';
import 'package:flutter_rxdart/model/login_body/login_body.dart';
import 'package:flutter_rxdart/model/login_response/login_response.dart';
import 'package:flutter_rxdart/model/product/product_response.dart';

class ApiProvider {
  final String _endpoint = "https://bengkelta.herokuapp.com";
  Dio _dio = Dio();

  Future<LoginResponse> postLogin(LoginBody loginBody) async {
    try {
      Response response =
          await _dio.post('$_endpoint/user/login', data: loginBody.toJson());

      return LoginResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print(error);
    }
  }

  Future<ProductResponse> getProduct(token) async {
    try {
      Response response = await _dio.get('$_endpoint/produk',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      print(response.data);
      return ProductResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print(error);
    }
  }
}
