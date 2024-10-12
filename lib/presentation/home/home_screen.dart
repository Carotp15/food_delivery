import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/dashboard/dashboard_screen.dart';
import 'package:food_delivery/presentation/home/widgets/custom_bottom_bar.dart';
import 'package:food_delivery/presentation/profile/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  final int pageIndex;

  const HomeScreen({
    super.key,
    required this.pageIndex,
  });

  final viewRoutes = const <Widget>[
    DashboardScreen(),
    Center(child: Text('Discover')),
    Center(child: Text('Cart')),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: IndexedStack(
          index: pageIndex,
          children: viewRoutes,
        ),
        bottomNavigationBar: CustomBottomBar(currentIndex: pageIndex));
  }
}
