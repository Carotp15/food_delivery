import 'package:flutter/material.dart';
import 'package:food_delivery/domain/models/item.dart';
import 'package:food_delivery/presentation/product/widgets/app_bar.dart';
import 'package:food_delivery/presentation/product/widgets/header_img_title.dart';
import 'package:food_delivery/presentation/product/widgets/section_title.dart';
import 'package:food_delivery/presentation/shopping_cart/widgets/add_to_cart_button.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimentions.dart';
import 'package:food_delivery/utils/text_styles.dart';


class ProductDetailScreen extends StatelessWidget {
  final ItemModel item;
  final Function(ItemModel) addToCart;

  const ProductDetailScreen({
    super.key,
    required this.item,
    required this.addToCart, 
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundScreens,
      appBar: ProductDetailAppBar(item: item, onToggleStatus: (item ) {  },),
      bottomNavigationBar: AddToCartButton(
        item: item,
        addToCart: addToCart, 
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimens.bodyMarginLarge),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderImageTitle(item: item),
                SizedBox(height: AppDimens.bodyMarginLarge * 2),
                const SectionTitle(title: 'Description'),
                SizedBox(height: AppDimens.bodyMarginSmall),
                Text(
                  item.description,
                  style: AppTextStyles.thin.copyWith(
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
