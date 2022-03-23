import 'package:busca_cep/application/themes/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class CepDetailsWidget extends StatelessWidget {
  final String title;
  const CepDetailsWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.pokemonCardTitle,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
