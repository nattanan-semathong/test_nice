import 'package:injectable/injectable.dart';
import 'package:my_app/features/news/domain/entity/news_entity.dart';
import 'package:my_app/features/news/domain/repository/news_repository.dart';

// class GetRecentNewsUseCase {
//   final NewsRepository newsRepositoryImpl;
//   GetRecentNewsUseCase(this.newsRepositoryImpl);
//   Future<List<NewsEntity>> call() async {
//     return newsRepositoryImpl.getRecentNews();
//   }
// }

abstract class GetRecentNewsUseCase {
  Future<List<NewsEntity>> execute();
}

@Injectable(as: GetRecentNewsUseCase)
class GetRecentNewsUseCaseImpl implements GetRecentNewsUseCase {
  late final NewsRepository _newsRepository;

  GetRecentNewsUseCaseImpl(this._newsRepository);

  @override
  Future<List<NewsEntity>> execute() async {
    // try {
    //   final user = await _loginRepository.login(credential);
    //   if (user == null) {
    //     return SingleUseCaseResult.genericError(Exception());
    //   } else {
    //     return SingleUseCaseResult.success(user);
    //   }
    // } on NoInternetConnection catch (_) {
    //   return SingleUseCaseResult.noInternetConnection();
    // } on ServerError catch (e) {
    //   return SingleUseCaseResult.serverError(e);
    // } on Exception catch (e) {
    //   return SingleUseCaseResult.genericError(e);
    // }
    // TODO HAndle error case

    List<NewsEntity>? news = await _newsRepository.getRecentNews();
    return news ?? List<NewsEntity>.empty();
  }
}
