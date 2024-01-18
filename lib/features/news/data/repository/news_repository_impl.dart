import 'package:injectable/injectable.dart';
import 'package:my_app/features/news/data/service/news_service.dart';
import 'package:my_app/features/news/data/mapper/news_mapper.dart';
import 'package:my_app/features/news/data/model/news_response.dart';
import 'package:my_app/features/news/domain/entity/news_entity.dart';
import 'package:my_app/features/news/domain/repository/news_repository.dart';

@Singleton(as: NewsRepository)
class NewsRepositoryImpl implements NewsRepository {
  final NewsService _newsService;
  final String _apiKey;
  final NewsMapper _newsMapper;
  NewsRepositoryImpl(
      this._newsService, @Named('apiKey') this._apiKey, this._newsMapper);

  @override
  Future<List<NewsEntity>?> getRecentNews() async {
    final test;
    final NewsAPIResponse newsApiResponses = await _newsService.getRecentNews(
        "technology", "en", "publishedAt", _apiKey);
    return newsApiResponses.articles?.map((e) => _newsMapper.map(e)).toList();
  }
}
