import 'package:clothes_project/core/network/dio_helper.dart';
import 'package:clothes_project/core/network/end_points.dart';
import 'package:clothes_project/core/resources/cache_helper.dart';
import 'package:clothes_project/features/auth/login/view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/user_model.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  TextEditingController userNameControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();

  // TextEditingController signUpId = TextEditingController();
  TextEditingController signUpUserName = TextEditingController();
  TextEditingController signUpEmail = TextEditingController();
  TextEditingController signUpPassword = TextEditingController();

  Future<void> login() async {
    try {
      emit(loginLoading());

      final Response response = await DioHelper.postRequest(
          endPoint: AppEndPoints.loginEndpoint,
        body: {
          "username": userNameControl.text,
          "password": passwordControl.text
        }
      );
      
      if(response.statusCode == 200 || response.statusCode == 201) {
        UserModel model = UserModel.fromJson(response.data);

        if(model.token != null) {
          await CacheHelper.saveToken(model.token!);
        } else {
          emit(loginFailure("There is No Token"));
        }
      } else {
        // emit(loginFailure(response.data.toString()));
        emit(loginFailure("Wrong UserName or Password"));
      }
      emit(loginSuccess());
    } on DioException catch(e) {
      emit(loginFailure("Wrong UserName or Password"));
      // emit(loginFailure(e.message??""));
    } catch(e) {
      emit(loginFailure(e.toString()));
    }
  }

  Future<void> signup() async {
    try {
      emit(loginLoading());

      final Response response = await DioHelper.postRequest(
          endPoint: AppEndPoints.signUpEndpoint,
          body: {
            "id": 0,
            "username": signUpUserName.text,
            "email": signUpEmail.text,
            "password": signUpPassword.text
          }
      );

      if(response.statusCode == 200 || response.statusCode == 201) {
        UserModel model = UserModel.fromJson(response.data);
      } else {
        // emit(loginFailure(response.data.toString()));
        emit(signUpFailure("Wrong Data"));
      }
      emit(signUpSuccess());
    } on DioException catch(e) {
      emit(signUpFailure("Error!!!"));
    } catch (e) {
      emit(signUpFailure("Error!!!"));
    }
  }
}
