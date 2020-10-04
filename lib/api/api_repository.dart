import 'package:flutter_rxdart/api/api_provider.dart';
import 'package:flutter_rxdart/model/login_body/login_body.dart';
import 'package:flutter_rxdart/model/login_response/login_response.dart';
import 'package:flutter_rxdart/model/product/product_response.dart';
import 'package:flutter_rxdart/model/user/user.dart';

class ApiRepository {
  ApiProvider _apiProvider = ApiProvider();

  Future<LoginResponse> postLogin(LoginBody loginBody) {
    return _apiProvider.postLogin(loginBody);
  }

  LoginResponse loginResponse = LoginResponse();
  Future<ProductResponse> getProduct() {
    return _apiProvider.getProduct(loginResponse.token);
  }
}
