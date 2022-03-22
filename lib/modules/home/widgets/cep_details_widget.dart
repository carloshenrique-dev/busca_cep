import 'package:flutter/material.dart';
import 'package:unip_presentation/application/themes/styles/app_text_styles.dart';

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
