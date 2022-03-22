import 'package:get/get.dart';
import 'package:unip_presentation/core/repositories/search_repository.dart';
import 'package:unip_presentation/core/repositories/search_repository_impl.dart';
import 'package:unip_presentation/core/view_models/search/search_view_model.dart';
import 'package:unip_presentation/core/view_models/search/search_view_model_impl.dart';
import './home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchRepository>(
        () => SearchRepositoryImpl(
              apiService: Get.find(),
            ),
        fenix: true);
    Get.lazyPut<SearchViewModel>(
        () => SearchViewModelImpl(
              searchRepository: Get.find(),
            ),
        fenix: true);
    Get.put(
      HomeController(
        searchViewModel: Get.find(),
      ),
    );
  }
}
