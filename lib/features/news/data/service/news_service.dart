import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

import '../model/news_response.dart';
part 'news_service.g.dart';

@singleton
@RestApi()
abstract class NewsService {
  // final Dio dio;
  // final String apiKey;
  // NewsApi({required this.dio, required this.apiKey});
  // Future<List<NewsResponse>> getRecentNews() async {
  //   final res = await dio
  //       .get('/v2/top-headlines?category=technology&language=en&sortBy=publishedAt&apiKey=$apiKey');
  //   return List<Map<String, dynamic>>.from(res.data['articles'])
  //       .map((e) => NewsResponse.fromJson(e))
  //       .toList();
  // }

  @factoryMethod
  factory NewsService(Dio dio) => _NewsService(dio);

  @GET(
      "/v2/top-headlines")
  Future<NewsAPIResponse> getRecentNews(
      @Query("category") String category,
      @Query("language") String language,
      @Query("sortBy") String sortBy,
      @Query("apiKey") String apiKey);
}
