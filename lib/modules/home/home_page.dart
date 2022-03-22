import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:unip_presentation/application/themes/styles/app_colors.dart';
import 'package:unip_presentation/application/themes/widgets/background_widget.dart';
import '../../application/themes/styles/app_colors.dart';
import './home_controller.dart';
import 'widgets/cep_details_widget.dart';
import 'widgets/search_box_widget.dart';
import 'widgets/title_text_widget.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: BackgroundWidget(
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: SizedBox(
              width: Get.width,
              height: Get.height,
              child: Column(
                children: [
                  SizedBox(
                    width: Get.width * .92,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: TitleTextWidget(
                        text: 'Pesquise seu CEP',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  SizedBox(
                    width: Get.width * .92,
                    child: SearchBoxWidget(
                      controller: controller.searchController,
                      onPressed: () => controller.clearSearch(),
                      clearButton: true, //controller.clearButton.value,
                      onFieldSubimitted: (value) async =>
                          await controller.searchCep(value),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  Obx(
                    () {
                      if (controller.cepModel.value == null) {
                        return const SizedBox.shrink();
                      } else {
                        return Container(
                          height: Get.height * .45,
                          width: Get.width * .92,
                          decoration: BoxDecoration(
                            color: AppColors.purple,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CepDetailsWidget(
                                  title:
                                      'CEP: ${controller.cepModel.value?.cep}',
                                ),
                                CepDetailsWidget(
                                  title:
                                      'Logradouro: ${controller.cepModel.value?.logradouro}',
                                ),
                                CepDetailsWidget(
                                  title:
                                      'Complemento: ${controller.cepModel.value?.complemento}',
                                ),
                                CepDetailsWidget(
                                  title:
                                      'Bairro: ${controller.cepModel.value?.bairro}',
                                ),
                                CepDetailsWidget(
                                  title:
                                      'Localidade: ${controller.cepModel.value?.localidade}',
                                ),
                                CepDetailsWidget(
                                  title: 'UF: ${controller.cepModel.value?.uf}',
                                ),
                                CepDetailsWidget(
                                  title:
                                      'IBGE: ${controller.cepModel.value?.ibge}',
                                ),
                                CepDetailsWidget(
                                  title:
                                      'DDD: ${controller.cepModel.value?.ddd}',
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
