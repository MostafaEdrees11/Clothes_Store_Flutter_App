part of 'home_cubit.dart';

abstract class HomeState {}

final class HomeInitial extends HomeState {}
final class HomeLoading extends HomeState {}
final class HomeSuccess extends HomeState {
  final List<ProductModel> products;
  HomeSuccess(this.products);
}

final class HomeFailure extends HomeState {
  final String msg;
  HomeFailure(this.msg);
}


