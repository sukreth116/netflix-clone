import 'package:dartz/dartz.dart';
import 'package:netflix_clone/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/downloads/api_models/downloads.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages();
}
