import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/auth/components/already_have_an_account_acheck.dart';
import 'package:food_delivery/presentation/auth/login/login_screen.dart';
import 'package:food_delivery/constants/constants.dart';
import 'package:food_delivery/utils/style.dart';
import 'package:food_delivery/utils/text_styles.dart';
import 'package:go_router/go_router.dart';


class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Text(
            "Thank you for joining!".toUpperCase(),
            style: AppTextStyles.normalDGrey.copyWith(
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: defaultPadding),
          Form(
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  cursorColor: kPrimaryColor,
                  onSaved: (email) {},
                  decoration: const InputDecoration(
                    hintText: "Your email",
                    hintStyle: AppTextStyles.mediumGrey,
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(defaultPadding),
                      child: Icon(CupertinoIcons.person_fill),
                    ),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: const InputDecoration(
                hintText: "Your password",
                hintStyle: AppTextStyles.mediumGrey,
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(CupertinoIcons.lock_fill),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          ElevatedButton(
            onPressed: () {
            context.go('/home/0');
          },
            style: (AppStyle.secondaryButton),
            child: Text("Sign Up".toUpperCase()),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    )
        ]
      ));
  }
}