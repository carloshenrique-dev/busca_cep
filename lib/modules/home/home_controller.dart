import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:unip_presentation/application/themes/loader/loader_mixin.dart';
import 'package:unip_presentation/core/models/cep/cep_model.dart';
import 'package:unip_presentation/core/view_models/search/search_view_model.dart';

class HomeController extends GetxController with LoaderMixin {
  TextEditingController searchController = TextEditingController();
  final cepModel = Rxn<CepModel>();
  final SearchViewModel _searchViewModel;
  final clearButton = false.obs;
  final loading = false.obs;

  HomeController({
    required SearchViewModel searchViewModel,
  }) : _searchViewModel = searchViewModel;

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
  }

  searchCep(String? cep) async {
    if (cep != '' && cep != null) {
      try {
        loading(true);
        var response = await _searchViewModel.getSearch(cep);
        cepModel(response);
        loading(false);
      } catch (e) {
        log(e.toString());
      }
    }
  }

  void clearSearch() {
    searchController.clear();
    clearButton(false);
  }
}
