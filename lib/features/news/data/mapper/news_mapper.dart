import 'package:injectable/injectable.dart';
import 'package:my_app/features/news/data/model/news_response.dart';
import 'package:my_app/features/news/domain/entity/news_entity.dart';

@injectable
class NewsMapper {
  NewsEntity map(NewsResponse? newsResponse) {
    if (newsResponse == null) {
      return const NewsEntity();
    }
    return NewsEntity(
        title: newsResponse.title ?? "",
        description: newsResponse.description ?? "",
        url: newsResponse.url,
        imageUrl: newsResponse.imageUrl ?? "",
        publishedAt: newsResponse.publishedAt,
        content: newsResponse.content ?? "");
  }
}
