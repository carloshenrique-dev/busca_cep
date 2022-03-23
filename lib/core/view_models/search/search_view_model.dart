import 'package:busca_cep/core/models/cep/cep_model.dart';

abstract class SearchViewModel {
  Future<CepModel> getSearch(String cep);
}
