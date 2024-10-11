import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:go_router/go_router.dart';

class CustomBottomBar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomBar({
    super.key,
    required this.currentIndex,
  });

  void onItemTapped(BuildContext context, int index) {
    context.go('/home/$index');
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.grey.shade900,
      selectedItemColor: AppColors.greenPrincipal,
      unselectedItemColor: AppColors.tertiaryColor.withOpacity(0.8),
      selectedFontSize: 0,
      unselectedFontSize: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_checkout_outlined),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: 'Profile',
        ),
      ],
      currentIndex: currentIndex,
      onTap: (value) => onItemTapped(context, value),
      showSelectedLabels: true,  
      showUnselectedLabels: false,
    );
  }
}