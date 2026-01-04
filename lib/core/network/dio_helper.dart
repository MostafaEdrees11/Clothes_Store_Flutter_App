import 'package:clothes_project/core/network/end_points.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioHelper {
  /*
  * Steps:
  * 1. Instance of dio
  * 2. initialize dio
  * 3. define endPoints methods
  */

  static Dio?dio;

  static void initDio(){
    dio ??= Dio(
      BaseOptions(
        receiveDataWhenStatusError: true,
        baseUrl: AppEndPoints.baseURL,
      )
    );

    dio!.interceptors.add(PrettyDioLogger());
  }

  static Future<Response> getRequest({required String endPoint}) async {
    try {
      Response response = await dio!.get(endPoint);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Response> postRequest({required String endPoint, Map<String, dynamic>? body}) async {
    try {
      Response response = await dio!.post(endPoint, data: body);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}