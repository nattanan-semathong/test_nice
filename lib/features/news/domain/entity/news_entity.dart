// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

 part 'news_entity.freezed.dart';

@freezed
@immutable
class NewsEntity with _$NewsEntity {
  const factory NewsEntity({
    @Default("") final  String title,
    @Default("") final String description,
    final String? url,
    @Default("") final String imageUrl,
    final String? publishedAt,
    @Default("") final String content,
  }) = _NewsEntity;
}
