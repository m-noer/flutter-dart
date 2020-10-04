import 'package:flutter_rxdart/api/api_repository.dart';
import 'package:flutter_rxdart/model/login_body/login_body.dart';
import 'package:flutter_rxdart/model/login_response/login_response.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc {
  final ApiRepository _apiRepository = ApiRepository();
  final BehaviorSubject<LoginResponse> _subject =
      BehaviorSubject<LoginResponse>();

  postLogin(LoginBody loginBody) async {
    LoginResponse response = await _apiRepository.postLogin(loginBody);
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<LoginResponse> get subject => _subject;
}

final loginBloc = LoginBloc();
