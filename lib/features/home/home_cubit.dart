

import 'package:clothes_project/core/network/dio_helper.dart';
import 'package:clothes_project/core/network/end_points.dart';
import 'package:clothes_project/models/product_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  Future<void> getProducts(String endPoint) async {
    try {
      emit(HomeLoading());

      final Response response = await DioHelper.getRequest(endPoint: endPoint);

      if(response.statusCode == 200) {
        final products = (response.data as List)
            .map((product) => ProductModel.fromJson(product))
            .toList();
        emit(HomeSuccess(products));
      } else {
        emit(HomeFailure("Fail to get Products"));
      }
    } on DioException catch (e) {
      emit(HomeFailure("Fail to get Products"));
    } catch (e) {
      emit(HomeFailure("Fail to get Products"));
    }
  }

  Future<void> getProductsByCategory(String category) async {
    if (category == 'All') {
      await getProducts(AppEndPoints.getAllProductsEndpoint);
    } else {
      await getProducts('${AppEndPoints.getAllProductsEndpoint}/category/$category');
    }
  }
}
