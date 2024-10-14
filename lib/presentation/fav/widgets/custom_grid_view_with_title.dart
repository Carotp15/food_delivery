import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/domain/models/item.dart';
import 'package:food_delivery/presentation/product/product_detail_screen.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/text_styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Import Riverpod
import 'package:food_delivery/providers/cart_provider.dart'; // Import the CartProvider

class CustomGridViewWithTitle extends ConsumerWidget {
  final List<ItemModel> items;
  final bool showHero;
  final Function(ItemModel) onToggleStatus;

  const CustomGridViewWithTitle({
    super.key,
    required this.items,
    required this.showHero,
    required this.onToggleStatus,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartNotifier = ref.read(cartProvider.notifier); // Access the CartNotifier

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 12,
          childAspectRatio: 3 / 4,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(
                    item: item,
                    addToCart: (ItemModel currentItem) {
                      cartNotifier.addToCart(currentItem);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('${currentItem.name} added to cart')),
                );
                    },
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(16),
                        ),
                        child: Image.asset(
                          item.img,
                          height: 160,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          item.name,
                          style: AppTextStyles.mediumBold,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Text(
                                '\$${item.price}',
                                style: AppTextStyles.large.copyWith(
                                  fontSize: 14,
                                  color: AppColors.greenColor,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => onToggleStatus(item), 
                              child: Icon(
                                item.liked
                                    ? CupertinoIcons.heart_fill
                                    : CupertinoIcons.heart,
                                color: item.liked ? Colors.red : Colors.grey,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
