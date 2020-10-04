import 'package:flutter_rxdart/api/api_repository.dart';
import 'package:flutter_rxdart/model/product/product_response.dart';
import 'package:rxdart/rxdart.dart';

class ProductBloc {
  final ApiRepository _apiRepository = ApiRepository();

  final BehaviorSubject<ProductResponse> _subject =
      BehaviorSubject<ProductResponse>();

  getProduct() async {
    ProductResponse response = await _apiRepository.getProduct();
    _subject.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<ProductResponse> get subject => _subject;
}

final productBloc = ProductBloc();
