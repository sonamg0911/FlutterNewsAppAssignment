import 'package:dio/dio.dart';
import 'package:news_app/data/model/news_list_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'api_services.g.dart';

@singleton
@RestApi(baseUrl: "https://newsapi.org/v2")
abstract class ApiServices {
  @factoryMethod
  factory ApiServices() {
    final dio = Dio();
    dio.options = BaseOptions(receiveTimeout: 30000, connectTimeout: 30000, contentType: 'content/json');
    return _ApiServices(dio);
  }

  @GET("/top-headlines")
  Future<NewsListResponse?> getNews({
    @Query("country") required String country,
    @Query("page") required int page,
    @Query("pageSize") required int pageSize,
    @Query("apiKey") required String apiKey,
  });
}
