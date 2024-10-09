import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/utils/text_styles.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 40,
            ),
            Text(
              'Dashboard',
              style: AppTextStyles.normalGrey,
            ),
          ],
        ),
    );
  }
}