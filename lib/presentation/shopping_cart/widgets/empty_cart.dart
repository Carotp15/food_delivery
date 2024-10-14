import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/shared_widgets/icon_with_texts.dart';
import 'package:food_delivery/utils/style.dart';
import 'package:food_delivery/utils/text_styles.dart';
import 'package:go_router/go_router.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const IconWithTextsWidget(
          icon: CupertinoIcons.shopping_cart,
          title: 'No orders yet',
          subTitle: 'Hit the button below to start ordering',
        ),
        Positioned(
          left: 16.0,
          right: 16.0,
          bottom: 5.0,
          child: ElevatedButton(
            onPressed: () {
              context.go('/home/0');
            },
            style: (AppStyle.secondaryButton),
            child: const Text('Start ordering',
              style: AppTextStyles.mediumWhite),
          ),
        ),
      ],
    );
  }
}
