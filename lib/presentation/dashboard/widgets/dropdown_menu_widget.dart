import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/text_styles.dart';
import 'package:go_router/go_router.dart';

class CustomDropdownWidget extends StatelessWidget {
  const CustomDropdownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        switch (value) {
          case 'Logout':
            context.go('/login');
            break;
        }
      },
      itemBuilder: (BuildContext context) {
        return [
          const PopupMenuItem<String>(
            value: 'Logout',
            child: Text('Logout',
            textAlign: TextAlign.center,
            style: AppTextStyles.mediumDarkGrey,
            ),
          ),
        ];
      },
      icon: const Icon(CupertinoIcons.bars), 
    );
  }
}

