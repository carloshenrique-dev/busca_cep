import 'package:busca_cep/application/themes/styles/app_colors.dart';
import 'package:busca_cep/application/themes/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class SearchBoxWidget extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onPressed;
  final bool clearButton;
  final Function(String)? onFieldSubimitted;

  const SearchBoxWidget({
    Key? key,
    required this.controller,
    required this.onPressed,
    required this.clearButton,
    this.onFieldSubimitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppTextStyles.searchBarHintText,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.whiteDefault,
        prefixIcon: const Icon(
          Icons.search,
          size: 25,
          color: AppColors.grayColor,
        ),
        suffixIcon: Visibility(
          visible: clearButton,
          child: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.close,
              color: AppColors.body,
            ),
          ),
        ),
        hintText: 'Ex: 13218-000',
        hintStyle: AppTextStyles.searchBarHintText,
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: AppColors.white),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: AppColors.white),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      controller: controller,
      onFieldSubmitted: onFieldSubimitted,
    );
  }
}
