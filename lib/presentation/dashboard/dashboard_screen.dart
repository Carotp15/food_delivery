import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/infrastructure/datasource/product_api_datasource.dart';
import 'package:food_delivery/presentation/dashboard/product_detail.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  DashboardScreenState createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  final ProductRemoteDataSource service = ProductRemoteDataSource();
  List<dynamic> products = [];
  String selectedCategory = 'Food';

  @override
  void initState() {
    super.initState();
    _loadProducts('fruits');
  }

  Future<void> _loadProducts(String category) async {
    try {
      List<dynamic> fetchedProducts;

      switch (category) {
        case 'fruits':
          fetchedProducts = await service.getFruits();
          break;
        case 'vegetables':
          fetchedProducts = await service.getVegetables();
          break;
        case 'dairy':
          fetchedProducts = await service.getDairy();
          break;
        case 'meat':
          fetchedProducts = await service.getMeat();
          break;
        case 'snacks':
          fetchedProducts = await service.getSnacks();
          break;
        default:
          fetchedProducts = [];
      }

      setState(() {
        products = fetchedProducts;
      });
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  void _filterProductsByCategory(String category) {
    setState(() {
      selectedCategory = category;
      _loadProducts(category);
    });
  }

  void _showProductDetails(BuildContext context, dynamic product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetail(product: product),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF35434),
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.cover,
              height: 100,
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 110),
                child: Center(
                  child: Text(
                    'Food Delivery',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: products.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                children: [
                  _buildCategories(),
                  const SizedBox(height: 20),
                  _buildProductsGrid(),
                ],
              ),
            ),
    );
  }

  Widget _buildCategories() {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildCategoryCard(
              'Fruits', Icons.apple, () => _filterProductsByCategory('fruits')),
          _buildCategoryCard('Vegetables', Icons.grass,
              () => _filterProductsByCategory('vegetables')),
          _buildCategoryCard('Dairy', Icons.local_drink,
              () => _filterProductsByCategory('dairy')),
          _buildCategoryCard('Meat', Icons.restaurant,
              () => _filterProductsByCategory('meat')),
          _buildCategoryCard('Snacks', Icons.local_pizza,
              () => _filterProductsByCategory('snacks')),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(String name, IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 2,
        child: SizedBox(
          width: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 30),
              const SizedBox(height: 5),
              Text(name, style: const TextStyle(fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProductsGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return _buildProductCard(product['title'], product['image'], product);
      },
    );
  }

  Widget _buildProductCard(String name, String imageUrl, dynamic product) {
    return Card(
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
            width: double.infinity,
            child: ClipRect(
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (BuildContext context, Object error,
                    StackTrace? stackTrace) {
                  return Image.asset(
                    'assets/images/default-food.png',
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.add_shopping_cart),
                      color: Colors.blue,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.favorite_border),
                      color: Colors.red,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.info),
                      color: Colors.grey,
                      onPressed: () {
                        _showProductDetails(context, product);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
