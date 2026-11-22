import 'package:json_annotation/json_annotation.dart'; 
import 'search_result_model.dart';
part 'serach_response_model.g.dart';

@JsonSerializable()
class SerachModel {
  List<SearchResultModel> results;

  SerachModel({required this.results});

  factory SerachModel.fromJson(Map<String, dynamic> json) {
    return _$SerachModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SerachModelToJson(this);
}
