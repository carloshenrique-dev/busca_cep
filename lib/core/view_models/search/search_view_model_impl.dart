import 'package:unip_presentation/core/models/cep/cep_model.dart';
import 'package:unip_presentation/core/repositories/search_repository.dart';
import './search_view_model.dart';

class SearchViewModelImpl implements SearchViewModel {
  final SearchRepository _searchRepository;

  SearchViewModelImpl({
    required SearchRepository searchRepository,
  }) : _searchRepository = searchRepository;

  @override
  Future<CepModel> getSearch(String cep) => _searchRepository.getSearch(cep);
}
