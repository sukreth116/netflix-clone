import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/core/constants/api_constants.dart';
import 'package:netflix_clone/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/search/model/serach_response_model.dart';
import 'package:netflix_clone/infrastructure/search_service/search_service.dart';

@LazySingleton(as: SearchService)
class SearchServiceImplementation implements SearchService {
  @override
  Future<Either<MainFailure, SerachModel>> searchMovies({
    required String movieQuery,
  }) async {
    try {
      final Response response = await Dio(
        BaseOptions(),
      ).get(ApiEndPoints.searchUrl, queryParameters: {'query': movieQuery});

      log(response.data.toString());

      if (response.statusCode == 200 || response.statusCode == 201) {
        final searchList = SerachModel.fromJson(response.data);
        log(searchList.toString());
        return Right(searchList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
