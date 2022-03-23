import 'package:busca_cep/modules/home/home_module.dart';

abstract class AppRoutes {
  static final routes = [
    ...HomeModule().routers,
  ];
}
