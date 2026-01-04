import 'package:clothes_project/core/network/end_points.dart';
import 'package:clothes_project/core/resources/app_loading.dart';
import 'package:clothes_project/features/category/category_cubit.dart';
import 'package:clothes_project/features/home/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/resources/app_colors.dart';

class CategroiesView extends StatefulWidget {
  const CategroiesView({super.key, required this.onCategorySelected, this.selectedCategory = 'All'});

  final Function(String) onCategorySelected;
  final String selectedCategory;

  @override
  State<CategroiesView> createState() => _CategroiesViewState();
}

class _CategroiesViewState extends State<CategroiesView> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      CategoryCubit()
        ..getCategories(AppEndPoints.getAllCategoriesEndpoint),
      child: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {

          if(state is CategoriesFailure) {
            CategoriesFailure("Failed to fetch categories");
          }

          if(state is CategoriesLoading) {
            return LoddingScreen();
          }

          if(state is CategoriesSuccess) {
            if(!state.categories.contains('All')) state.categories.insert(0, 'All');

            return Scaffold(
              body: Row(
                spacing: 8,
                children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.categories.length,
                      itemBuilder: (context, index) {
                        final category = state.categories[index];
                        final isSelected = widget.selectedCategory.toLowerCase() ==
                            category.toLowerCase();

                          return GestureDetector(
                            onTap: () {
                              widget.onCategorySelected(category);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              margin: EdgeInsets.symmetric(
                                horizontal: 4,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                                color: (isSelected)
                                    ? AppColors.primaryColor
                                    : Colors.white,
                              ),
                              child: Text(
                                state.categories[index],
                                style: TextStyle(
                                  color:
                                  (isSelected)
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          );
                        }
                    ),
                  ),
                ],
              ),
            );
          }
          return SizedBox.shrink();
        },
      ),
    );
  }
}

