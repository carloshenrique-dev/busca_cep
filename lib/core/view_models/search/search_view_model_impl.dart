import 'package:busca_cep/core/models/cep/cep_model.dart';
import 'package:busca_cep/core/repositories/search_repository.dart';
import './search_view_model.dart';

class SearchViewModelImpl implements SearchViewModel {
  final SearchRepository _searchRepository;

  SearchViewModelImpl({
    required SearchRepository searchRepository,
  }) : _searchRepository = searchRepository;

  @override
  Future<CepModel> getSearch(String cep) => _searchRepository.getSearch(cep);
}
