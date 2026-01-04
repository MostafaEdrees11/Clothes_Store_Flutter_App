import 'package:clothes_project/core/network/end_points.dart';
import 'package:clothes_project/core/resources/app_colors.dart';
import 'package:clothes_project/core/resources/app_loading.dart';
import 'package:clothes_project/features/category/view.dart';
import 'package:clothes_project/features/home/home_cubit.dart';
import 'package:clothes_project/features/product_details/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/discover_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeCubit()..getProducts(AppEndPoints.getAllProductsEndpoint),
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,

        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {

            if (state is HomeFailure) {
              HomeFailure("Fail to get Products");
            }

            if (state is HomeLoading) {
              return LoddingScreen();
            }

            if (state is HomeSuccess) {
              return SafeArea(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Discover",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        spacing: 8,
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Color(0xFF999999),
                                  size: 25,
                                ),
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFE6E6E6),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.tune,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),

                      SizedBox(height: 50, child: CategroiesView(
                          selectedCategory: _selectedCategory,
                          onCategorySelected: (category) {
                            setState(() {
                              _selectedCategory = category;
                              context.read<HomeCubit>().getProductsByCategory(category);
                            });
                          }
                      )),
                      SizedBox(height: 8),

                      Expanded(
                        child: GridView.builder(
                          padding: EdgeInsets.all(8),
                          itemCount: state.products.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 0.75,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 16,
                                crossAxisCount: 2,
                              ),
                          itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ProductDetailsScreen(
                                    product: state.products[index],
                                  ),
                                ),
                              );
                            },
                            child: DiscoverItem(
                              dicoverItemImage:
                                  state.products[index].image ?? "",
                              dicoverItemTitle:
                                  state.products[index].title ?? "Shoes",
                              dicoverItemPrice:
                                  state.products[index].price?.toStringAsFixed(2) ?? '0.00',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }

            return SizedBox();
          },
        ),
      ),
    );
  }
}
