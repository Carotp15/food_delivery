import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimentions.dart';
import 'package:food_delivery/utils/text_styles.dart';

class FavAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FavAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text(
        'Favorites',
        style: AppTextStyles.largeBold,
      ),
      leading: Padding(
        padding: EdgeInsets.only(left: AppDimens.bodyMarginLarge),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}