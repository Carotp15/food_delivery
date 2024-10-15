import 'package:flutter/material.dart';
import 'package:food_delivery/utils/style.dart';
import 'package:go_router/go_router.dart';

class GetStartedButton extends StatelessWidget {
  final Animation<Offset> animOffset;

  const GetStartedButton({super.key, required this.animOffset});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.go('/login');
      },
      style: (AppStyle.secondaryButton),
      child: const Text(
        'Get Started',
      ),
    );
  }
}