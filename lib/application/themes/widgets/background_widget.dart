import 'package:busca_cep/application/themes/styles/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  const BackgroundWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: Get.height,
      child: Stack(
        alignment: Alignment.topRight,
        children: <Widget>[
          Positioned(
            top: 15,
            child: Image.asset(
              AppImages.searchBackground,
              width: Get.width,
            ),
          ),
          Positioned(
            top: 230,
            child: child,
          ),
        ],
      ),
    );
  }
}
