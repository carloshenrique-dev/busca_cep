import 'package:unip_presentation/core/models/cep/cep_model.dart';

abstract class SearchViewModel {
  Future<CepModel> getSearch(String cep);
}
