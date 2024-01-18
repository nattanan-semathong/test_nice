abstract class BaseApiResponse<T>{
    final String? status;
    final int? totalResults;
    final List<T>? articles;

  BaseApiResponse(this.status, this.totalResults, this.articles);

}