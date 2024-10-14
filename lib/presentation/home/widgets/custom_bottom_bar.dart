import 'package:flutter/cupertino.dart';
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
      showUnselectedLabels: false,  // Ocultar etiquetas no seleccionadas
      showSelectedLabels: false,    // Ocultar etiquetas seleccionadas
      elevation: 0,
      backgroundColor: AppColors.backgroundScreens,
      unselectedItemColor: Colors.grey.shade500,
      selectedItemColor: AppColors.primaryColor,
      iconSize: 25,  // Reducir el tamaño de los iconos
      items: [
        BottomNavigationBarItem(
          icon: Icon(currentIndex == 0 ? CupertinoIcons.house_fill : CupertinoIcons.house),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(currentIndex == 1 ? CupertinoIcons.suit_heart_fill : CupertinoIcons.suit_heart),
          label: 'favourite',
        ),
        BottomNavigationBarItem(
          icon: Icon(currentIndex == 2 ? CupertinoIcons.cart_fill : CupertinoIcons.cart),
          label: 'cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(currentIndex == 3 ? CupertinoIcons.person_fill : CupertinoIcons.person),
          label: 'profile',
        ),
      ],
      currentIndex: currentIndex,
      onTap: (value) => onItemTapped(context, value),
      selectedFontSize: 0,  // Tamaño de fuente para el ítem seleccionado
      unselectedFontSize: 0,  // Tamaño de fuente para ítems no seleccionados
      type: BottomNavigationBarType.fixed,  // Asegura que todos los ítems mantengan su posición
    );
  }
}


 