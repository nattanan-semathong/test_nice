// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsAPIResponse _$NewsAPIResponseFromJson(Map<String, dynamic> json) =>
    NewsAPIResponse(
      json['status'] as String?,
      json['totalResults'] as int?,
      (json['articles'] as List<dynamic>?)
          ?.map((e) => NewsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NewsAPIResponseToJson(NewsAPIResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };

NewsResponse _$NewsResponseFromJson(Map<String, dynamic> json) => NewsResponse(
      json['title'] as String?,
      json['description'] as String?,
      json['url'] as String?,
      json['urlToImage'] as String?,
      json['publishedAt'] as String?,
      json['content'] as String?,
    );

Map<String, dynamic> _$NewsResponseToJson(NewsResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.imageUrl,
      'publishedAt': instance.publishedAt,
      'content': instance.content,
    };
