import 'package:unip_presentation/core/models/cep/cep_model.dart';

abstract class SearchRepository {
  Future<CepModel> getSearch(String cep);
}
