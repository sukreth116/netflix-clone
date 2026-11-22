import 'package:dartz/dartz.dart';
import 'package:netflix_clone/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/search/model/serach_response_model.dart';

abstract class SearchService {
  Future<Either<MainFailure, SerachModel>> searchMovies({
    required String movieQuery,
  });
}
