import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/domain/models/item.dart';
import 'package:food_delivery/presentation/fav/widgets/liked_button.dart';
import 'package:food_delivery/utils/dimentions.dart';

class ProductDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ItemModel item;
  final Function(ItemModel) onToggleStatus;


  const ProductDetailAppBar({super.key, required this.item, required this.onToggleStatus});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black.withOpacity(0.8)),
      automaticallyImplyLeading: false,
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimens.bodyMarginMedium),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                // Toggle like functionality
              },
              icon: SvgPicture.asset(
                'assets/icons/heart.svg',
              ),
            ),
            LikedButton(
              isLiked: item.liked,
              onToggle: () => onToggleStatus(item), // Pass the toggle callback
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}