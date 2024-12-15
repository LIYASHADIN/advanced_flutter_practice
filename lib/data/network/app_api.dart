
import 'package:dio/dio.dart';
import 'package:my_advanced_flutter/app/constants.dart';
import 'package:my_advanced_flutter/data/responses/responses.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
 part 'app_api.g.dart';
@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient{

  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST("customer/login")
  Future<AUthenticationResponse> login();
}