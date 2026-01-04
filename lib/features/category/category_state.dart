part of 'category_cubit.dart';

abstract class CategoryState {}

final class CategoryInitial extends CategoryState {}
final class CategoriesLoading extends CategoryState {}
final class CategoriesSuccess extends CategoryState {
  final List<String> categories;
  CategoriesSuccess(this.categories);
}

final class CategoriesFailure extends CategoryState {
  final String msg;
  CategoriesFailure(this.msg);
}
