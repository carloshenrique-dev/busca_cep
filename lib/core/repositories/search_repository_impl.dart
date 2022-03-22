import 'dart:developer';
import 'package:unip_presentation/core/models/cep/cep_model.dart';
import 'package:unip_presentation/core/services/api_service.dart';
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
