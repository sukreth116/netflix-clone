import 'package:json_annotation/json_annotation.dart';
import 'package:netflix_clone/core/constants/api_constants.dart';
part 'search_result_model.g.dart';

@JsonSerializable()
class SearchResultModel {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  String get backdropImageUrl => '$imageBaseUrl$backdropPath';
  String get posterImageUrl => '$imageBaseUrl$posterPath';


  SearchResultModel({this.backdropPath, this.id, this.title, this.posterPath});

  factory SearchResultModel.fromJson(Map<String, dynamic> json) {
    return _$SearchResultModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultModelToJson(this);
}
