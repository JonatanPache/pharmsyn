import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appbar/t_appbar.dart';
import 'package:t_store/common/widgets/appbar/tabbar.dart';
import 'package:t_store/common/widgets/brands/brand_card.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store/common/widgets/shimmers/brand_shimmer.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/controllers/brand_controller.dart';
import 'package:t_store/features/shop/controllers/category_controller.dart';
import 'package:t_store/features/shop/models/category_model.dart';
import 'package:t_store/features/shop/models/product_model.dart';
import 'package:t_store/features/shop/screens/store/widgets/category_tab.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/data_dummy.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  final TextEditingController _searchController = TextEditingController();
  bool isSearching = false;
  List<ProductModel> allProducts = DataDummy.products;
  List<ProductModel> filteredProducts = [];

  void _searchProducts(String query) {
    final searchTerm = query.trim().toLowerCase();
    if (searchTerm.isNotEmpty) {
      setState(() {
        filteredProducts = allProducts
            .where((product) =>
                product.description!.toLowerCase().contains(searchTerm))
            .toList();
        isSearching = true;
      });
    } else {
      setState(() {
        filteredProducts = allProducts;
        isSearching = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final brandController = Get.put(BrandController());
    final categories = CategoryController.instance.featuredCategories;

    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        /// App Bar
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: const [TCartCounterIcon()],
        ),
        body: NestedScrollView(
          /// Header
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// Search Bar
                      const SizedBox(width: TSizes.spaceBtwItems),
                      TSearchContainer(
                        text: 'Escribe tus sintomas',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                        controller: _searchController,
                        onTap: () {
                          _searchProducts(_searchController.text);
                        },
                        // onSubmitted: (value) {
                        //   _searchProducts(value);
                        // },
                      ),
                    ],
                  ),
                ),
                bottom: TTabBar(
                  tabs: categories
                      .map((category) => Tab(child: Text(category.name)))
                      .toList(),
                ),
              )
            ];
          },

          /// Body
          body: isSearching
              ? Expanded(
                  child: TGridLayout(
                    itemCount: filteredProducts.length,
                    itemBuilder: (_, index) => TProductCardVertical(
                      product: filteredProducts[index],
                    ),
                  ),
                )
              : TabBarView(
                  children: categories.map((category) {
                    return _buildCategoryTab(category);
                  }).toList(),
                ),
        ),
      ),
    );
  }

  Widget _buildCategoryTab(CategoryModel category) {
    // Aquí puedes construir las pestañas de categorías como lo hacías antes
    return TCategoryTab(category: category);
  }
}
