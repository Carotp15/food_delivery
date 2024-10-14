import 'package:flutter/material.dart';
import 'package:food_delivery/domain/models/item.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/text_styles.dart';

class HeaderImageTitle extends StatelessWidget {
  final ItemModel item;

  const HeaderImageTitle({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 3 + size.width * 0.2,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Hero(
              tag: item.id,
              child: Container(
                width: (size.height * 0.25) + (size.width * 0.1),
                height: (size.height * 0.25) + (size.width * 0.1),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(item.img),
                    fit: BoxFit.contain,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 32,
                      offset: const Offset(0, 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 32,
            left: 0,
            right: 0,
            child: Text(
              item.name,
              style: AppTextStyles.largeBold.copyWith(
                fontSize: 25,),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Text(
              '\$${item.price}',
              style: AppTextStyles.large.copyWith(
                fontSize: 20,
                color: AppColors.greenColor
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
