import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/downloads/api_models/downloads.dart';
import 'package:netflix_clone/infrastructure/downloads_service/i_downloads_repo.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(IDownloadsRepo downloadService)
    : super(FastLaughState.initial()) {
    on<FastLaughEvent>((event, emit) async {
      emit(
        const FastLaughState(videosList: [], isLoading: false, isError: true),
      );
      final result = await downloadService.getDownloadsImages();
      final state = result.fold(
        (MainFailure mainFailure) {
          return const FastLaughState(
            videosList: [],
            isLoading: false,
            isError: true,
          );
        },
        (List<Downloads> response) {
          return FastLaughState(
            videosList: response,
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(state);
    });
  }
}
