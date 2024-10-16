import 'package:flutter/material.dart';
import 'package:food_delivery/utils/text_styles.dart';

class ProfileListTile extends StatelessWidget {
  final String title;
  final Function() onTap;
  const ProfileListTile({
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: ListTile(
        onTap: onTap,
        trailing: const Icon(Icons.arrow_forward_ios,color: Colors.black,),
        title: Text(title,style: AppTextStyles.normalGrey),
      ),
    );
  }
}