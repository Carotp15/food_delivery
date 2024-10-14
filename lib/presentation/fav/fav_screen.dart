import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/domain/models/item.dart';
import 'package:food_delivery/presentation/fav/widgets/custom_grid_view_with_title.dart';
import 'package:food_delivery/presentation/fav/widgets/fav_bar.dart';
import 'package:food_delivery/presentation/shared_widgets/icon_with_texts.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  FavScreenState createState() => FavScreenState();
}
  class FavScreenState extends State<FavScreen> {
  late List<ItemModel> likedList;

  @override
  void initState() {
    super.initState();
    // Initialize likedList with liked items from itemsList
    likedList = itemsList.where((item) => item.liked).toList();
  }

  void toggleStatus(ItemModel item) {
    setState(() {
      if (item.liked) {
        item.liked = false;
        likedList.remove(item);
      } else {
        item.liked = true;
        likedList.add(item);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const FavAppBar(),
        body: likedList.isEmpty
            ? const IconWithTextsWidget(
                icon: CupertinoIcons.heart,
                title: 'There is not any favorite item',
                subTitle: '',
              )
            : CustomGridViewWithTitle(
                items: likedList, 
                onToggleStatus: toggleStatus,
                showHero: true,
              ),
      ),
    );
  }
}

