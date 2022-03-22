import 'package:unip_presentation/modules/home/home_module.dart';

abstract class AppRoutes {
  static final routes = [
    ...HomeModule().routers,
  ];
}
