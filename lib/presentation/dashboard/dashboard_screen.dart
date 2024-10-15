import 'package:flutter/material.dart';
import 'package:food_delivery/domain/models/item.dart';
import 'package:food_delivery/presentation/dashboard/widgets/categories_widget.dart';
import 'package:food_delivery/presentation/dashboard/widgets/grid_items_view_widget.dart';
import 'package:food_delivery/presentation/dashboard/widgets/header_text_widget.dart';
import 'package:food_delivery/presentation/dashboard/widgets/search_bar_widget.dart';
import 'package:food_delivery/providers/cart_provider.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  final List<String> categories = ["All", "Dessert", "Main Course", "Salad", "Soup", "Seafood"]; 
  int selectedCategoryIndex = 0; 

  List<ItemModel> items = []; 
  List<ItemModel> filteredItems = []; 

  @override
  void initState() {
    super.initState();
    items = itemsList; 
    filteredItems = List.from(items); 
  }

  void filterItems() {
    setState(() {
      if (categories[selectedCategoryIndex].toUpperCase() == "ALL") {
        filteredItems = List.from(items);
      } else {
        filteredItems = items
            .where((item) => item.category
                .map((cat) => cat.toUpperCase())
                .contains(categories[selectedCategoryIndex].toUpperCase()))
            .toList();
      }
    });
  }

  void _onSearch(String value) {
    setState(() {
      filteredItems = items
          .where((item) => item.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final cartNotifier = ref.read(cartProvider.notifier); 
    return Scaffold(
      backgroundColor: AppColors.backgroundScreens,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderTextWidget(), 
            SearchBarWidget(
              onSearch: _onSearch, 
            ),
            CategoriesWidget(
              categories: categories,
              selectedIndex: selectedCategoryIndex,
              onCategorySelect: (index) {
                setState(() {
                  selectedCategoryIndex = index; 
                });
                filterItems(); 
              },
            ),
            ItemsGridWidget(
              items: filteredItems,
              onToggleStatus: (item) {
              },
              addToCart: (item) {
                cartNotifier.addToCart(item); 
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${item.name} added to cart'),
                    elevation: 250),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

