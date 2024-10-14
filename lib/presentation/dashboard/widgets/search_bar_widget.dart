import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimentions.dart';

class SearchBarWidget extends StatelessWidget {
  final Function(String) onSearch;

  const SearchBarWidget({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppDimens.bodyMarginSmall, vertical: AppDimens.bodyMarginSmall * 2),
      child: TextField(
        textInputAction: TextInputAction.search,
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          fillColor: AppColors.textFieldInside,
          filled: true,
          hintText: 'Search',
          contentPadding:  EdgeInsets.symmetric(vertical: 6), 
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(color: AppColors.textFieldInside),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(color: AppColors.textFieldInside),
          ),
        ),
        onChanged: (value) {
          onSearch(value);
        },
        onSubmitted: (value) {
          onSearch(value);
        },
      ),
    );
  }
}

