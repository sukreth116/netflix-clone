// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:netflix_clone/bloc/downloads_bloc/downloads_bloc.dart' as _i278;
import 'package:netflix_clone/bloc/fast_laugh_bloc/fast_laugh_bloc.dart'
    as _i565;
import 'package:netflix_clone/bloc/search_bloc/search_bloc.dart' as _i45;
import 'package:netflix_clone/infrastructure/downloads_service/downloads_service.dart'
    as _i942;
import 'package:netflix_clone/infrastructure/downloads_service/i_downloads_repo.dart'
    as _i170;
import 'package:netflix_clone/infrastructure/search_service/search_service.dart'
    as _i656;
import 'package:netflix_clone/infrastructure/search_service/search_service_implementation.dart'
    as _i36;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i170.IDownloadsRepo>(() => _i942.DownloadsRepository());
    gh.lazySingleton<_i656.SearchService>(
      () => _i36.SearchServiceImplementation(),
    );
    gh.factory<_i278.DownloadsBloc>(
      () => _i278.DownloadsBloc(gh<_i170.IDownloadsRepo>()),
    );
    gh.factory<_i45.SearchBloc>(
      () => _i45.SearchBloc(
        downloadService: gh<_i170.IDownloadsRepo>(),
        searchService: gh<_i656.SearchService>(),
      ),
    );
    gh.factory<_i565.FastLaughBloc>(
      () => _i565.FastLaughBloc(gh<_i170.IDownloadsRepo>()),
    );
    return this;
  }
}
