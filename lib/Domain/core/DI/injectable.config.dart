// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/download/download_bloc.dart' as _i12;
import '../../../application/everyone_waatching/every_one_watching_bloc.dart'
    as _i13;
import '../../../application/fast_laugh/fast_laugh_bloc.dart' as _i14;
import '../../../application/Home%20Screen/home_bloc_bloc.dart' as _i15;
import '../../../application/search/search_bloc.dart' as _i11;
import '../../../Infrastructure/downloads/download_repository.dart' as _i6;
import '../../../Infrastructure/HomePage/homepage_repository.dart' as _i4;
import '../../../Infrastructure/New&Hot/everonewatching_repository.dart' as _i8;
import '../../../Infrastructure/search/search_repository.dart' as _i10;
import '../../downolads/i_download_repo.dart' as _i5;
import '../../home_page/i_homescrre_repo.dart' as _i3;
import '../../New&hot/i_everyonwwatching_repo.dart' as _i7;
import '../../Search/i_search_repo.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.HomeScreenPage>(() => _i4.GetPostar());
  gh.lazySingleton<_i5.IDownloadRepo>(() => _i6.GetImg());
  gh.lazySingleton<_i7.IEveryoneWatchingRepo>(() => _i8.GetPopular());
  gh.lazySingleton<_i9.ISearchRepo>(() => _i10.SearchResult());
  gh.factory<_i11.SearchBloc>(() => _i11.SearchBloc(
        get<_i5.IDownloadRepo>(),
        get<_i9.ISearchRepo>(),
      ));
  gh.factory<_i12.DownloadBloc>(
      () => _i12.DownloadBloc(get<_i5.IDownloadRepo>()));
  gh.factory<_i13.EveryOneWatchingBloc>(
      () => _i13.EveryOneWatchingBloc(get<_i7.IEveryoneWatchingRepo>()));
  gh.factory<_i14.FastLaughBloc>(
      () => _i14.FastLaughBloc(get<_i5.IDownloadRepo>()));
  gh.factory<_i15.HomeBlocBloc>(
      () => _i15.HomeBlocBloc(get<_i3.HomeScreenPage>()));
  return get;
}
