// ignore_for_file: invalid_annotation_target


import 'package:json_annotation/json_annotation.dart';

import 'base_api_response.dart';

part 'news_response.g.dart';

@JsonSerializable()
class NewsAPIResponse extends BaseApiResponse<NewsResponse> {
  NewsAPIResponse(String? status, int? totalResults, List<NewsResponse>? articles) // Specipy the type for the Jsoon serialization
      : super(status, totalResults, articles);

  factory NewsAPIResponse.fromJson(Map<String, Object?> json) =>
      _$NewsAPIResponseFromJson(json);
}

@JsonSerializable()
class NewsResponse {
  final String? title;
  final String? description;
  final String? url;
  @JsonKey(name: 'urlToImage')
  final String? imageUrl;
  final String? publishedAt;
  final String? content;

  NewsResponse(this.title, this.description,
      this.url, this.imageUrl, this.publishedAt, this.content);

  factory NewsResponse.fromJson(Map<String, Object?> json) =>
      _$NewsResponseFromJson(json);
}
