import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/profile/widgets/profile_bar.dart';
import 'package:food_delivery/utils/colors.dart';
import 'widgets/title_with_text_button.dart';
import 'widgets/profile_card_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundScreens,
        appBar: const ProfileAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  TitleWithTextButton(
                    buttonText: 'Change',
                    title: 'Personal Details',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 180,
                    width: double.infinity,
                    child: ProfileCardWidget(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
