// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Downloads _$DownloadsFromJson(Map<String, dynamic> json) => _Downloads(
  title: json['title'] as String?,
  backdropPath: json['backdrop_path'] as String?,
  posterPath: json['poster_path'] as String?,
);

Map<String, dynamic> _$DownloadsToJson(_Downloads instance) =>
    <String, dynamic>{
      'title': instance.title,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
    };
