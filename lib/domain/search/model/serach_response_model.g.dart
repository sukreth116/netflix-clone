// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serach_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SerachModel _$SerachModelFromJson(Map<String, dynamic> json) => SerachModel(
  results: (json['results'] as List<dynamic>)
      .map((e) => SearchResultModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SerachModelToJson(SerachModel instance) =>
    <String, dynamic>{'results': instance.results};
