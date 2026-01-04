
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/network/dio_helper.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial());

  Future<void> getCategories(String endPoint) async {
    try {
      emit(CategoriesLoading());

      final Response response = await DioHelper.getRequest(endPoint: endPoint);
      if(response.statusCode == 200) {
        List<String> categories = List<String>.from(response.data);
        emit(CategoriesSuccess(categories));
      }
    } on DioException catch (e) {
      emit(CategoriesFailure("Fail to get Products"));
    } catch (e) {
      emit(CategoriesFailure("Fail to get Products"));
    }
  }
}
