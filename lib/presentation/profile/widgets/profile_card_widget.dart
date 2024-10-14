import 'package:flutter/material.dart';
import 'package:food_delivery/utils/text_styles.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/man2.jpg',
                ),
                width: 150,
                height: 150,
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Alejandro Sierra',
                  style: AppTextStyles.mediumBold,
                ),
                Text(
                  'alejandro.sierra@mail.com',
                  style: AppTextStyles.normalGrey,
                ),
                Divider(
                  color: Color.fromARGB(255, 179, 177, 177),
                  height: 5,
                  endIndent: 5,
                ),
                Text(
                  '+1 123 000 0000',
                  style: AppTextStyles.normalGrey,
                ),
                Divider(
                  color: Colors.grey,
                  height: 5,
                  endIndent: 5,
                ),
                Text(
                  'Deepolie Street, 42, New York',
                  style: AppTextStyles.normalGrey,
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
