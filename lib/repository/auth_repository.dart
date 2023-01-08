


import 'package:mvvm/data/network/base_api_services.dart';
import 'package:mvvm/data/network/network_api_services.dart';
import 'package:mvvm/res/app_url.dart';

class AuthRepository {
  
  BaseApiServices _apiServices= NetworkApiService();

  Future<dynamic> loginApi(dynamic data)async{
    try {
      dynamic response= await _apiServices.getPostApiResponse(
        AppsUrl.loginEndPoint,
         data);
         return response;
    } catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }

  Future<dynamic> registerApi(dynamic data)async{
    try {
      dynamic response= await _apiServices.getPostApiResponse(
        AppsUrl.registerEndPoint,
         data);
         return response;
    } catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }

}