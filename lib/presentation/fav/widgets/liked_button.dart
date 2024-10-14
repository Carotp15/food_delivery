import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LikedButton extends StatelessWidget {
  final bool isLiked;
  final VoidCallback onToggle;

  const LikedButton({
    super.key,
    required this.isLiked,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onToggle, // Trigger the toggle function on tap
      child: Icon(
        isLiked ? CupertinoIcons.heart_fill : CupertinoIcons.heart, // Toggle icon
        color: isLiked ? Colors.red : Colors.grey,
        size: 24,
      ),
    );
  }
}

