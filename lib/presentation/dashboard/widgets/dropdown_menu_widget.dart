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
          case 'Login':
            context.go('/login');
            break;
          case 'Register':
            context.go('/register');
            break;
        }
      },
      itemBuilder: (BuildContext context) {
        return [
          const PopupMenuItem<String>(
            value: 'Login',
            child: Text('Login',
            textAlign: TextAlign.center,
            style: AppTextStyles.mediumDarkGrey,
            ),
          ),
          const PopupMenuItem<String>(
            value: 'Register',
            child: Text('Register',
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

