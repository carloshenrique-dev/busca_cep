import 'dart:developer';
import 'package:busca_cep/core/models/cep/cep_model.dart';
import 'package:busca_cep/core/services/api_service.dart';
import './search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  final ApiService _apiService;

  SearchRepositoryImpl({
    required ApiService apiService,
  }) : _apiService = apiService;

  @override
  Future<CepModel> getSearch(String cep) async {
    try {
      var response =
          await _apiService.get(path: 'https://viacep.com.br/ws/$cep/json/');
      return CepModel.fromMap(response.data);
    } catch (e) {
      log(e.toString());
      return CepModel();
    }
  }
}
