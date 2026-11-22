// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent()';
}


}

/// @nodoc
class $SearchEventCopyWith<$Res>  {
$SearchEventCopyWith(SearchEvent _, $Res Function(SearchEvent) __);
}


/// Adds pattern-matching-related methods to [SearchEvent].
extension SearchEventPatterns on SearchEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchInitialize value)?  searchInitialize,TResult Function( SearchMovie value)?  searchMovie,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchInitialize() when searchInitialize != null:
return searchInitialize(_that);case SearchMovie() when searchMovie != null:
return searchMovie(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchInitialize value)  searchInitialize,required TResult Function( SearchMovie value)  searchMovie,}){
final _that = this;
switch (_that) {
case SearchInitialize():
return searchInitialize(_that);case SearchMovie():
return searchMovie(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchInitialize value)?  searchInitialize,TResult? Function( SearchMovie value)?  searchMovie,}){
final _that = this;
switch (_that) {
case SearchInitialize() when searchInitialize != null:
return searchInitialize(_that);case SearchMovie() when searchMovie != null:
return searchMovie(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  searchInitialize,TResult Function( String movieQuery)?  searchMovie,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchInitialize() when searchInitialize != null:
return searchInitialize();case SearchMovie() when searchMovie != null:
return searchMovie(_that.movieQuery);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  searchInitialize,required TResult Function( String movieQuery)  searchMovie,}) {final _that = this;
switch (_that) {
case SearchInitialize():
return searchInitialize();case SearchMovie():
return searchMovie(_that.movieQuery);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  searchInitialize,TResult? Function( String movieQuery)?  searchMovie,}) {final _that = this;
switch (_that) {
case SearchInitialize() when searchInitialize != null:
return searchInitialize();case SearchMovie() when searchMovie != null:
return searchMovie(_that.movieQuery);case _:
  return null;

}
}

}

/// @nodoc


class SearchInitialize implements SearchEvent {
  const SearchInitialize();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchInitialize);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.searchInitialize()';
}


}




/// @nodoc


class SearchMovie implements SearchEvent {
  const SearchMovie({required this.movieQuery});
  

 final  String movieQuery;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchMovieCopyWith<SearchMovie> get copyWith => _$SearchMovieCopyWithImpl<SearchMovie>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchMovie&&(identical(other.movieQuery, movieQuery) || other.movieQuery == movieQuery));
}


@override
int get hashCode => Object.hash(runtimeType,movieQuery);

@override
String toString() {
  return 'SearchEvent.searchMovie(movieQuery: $movieQuery)';
}


}

/// @nodoc
abstract mixin class $SearchMovieCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SearchMovieCopyWith(SearchMovie value, $Res Function(SearchMovie) _then) = _$SearchMovieCopyWithImpl;
@useResult
$Res call({
 String movieQuery
});




}
/// @nodoc
class _$SearchMovieCopyWithImpl<$Res>
    implements $SearchMovieCopyWith<$Res> {
  _$SearchMovieCopyWithImpl(this._self, this._then);

  final SearchMovie _self;
  final $Res Function(SearchMovie) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movieQuery = null,}) {
  return _then(SearchMovie(
movieQuery: null == movieQuery ? _self.movieQuery : movieQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SearchState {

 List<SearchResultModel> get searchList; List<Downloads> get idleList; bool get isLoading; bool get isError; String get searchQuery;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&const DeepCollectionEquality().equals(other.searchList, searchList)&&const DeepCollectionEquality().equals(other.idleList, idleList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(searchList),const DeepCollectionEquality().hash(idleList),isLoading,isError,searchQuery);

@override
String toString() {
  return 'SearchState(searchList: $searchList, idleList: $idleList, isLoading: $isLoading, isError: $isError, searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 List<SearchResultModel> searchList, List<Downloads> idleList, bool isLoading, bool isError, String searchQuery
});




}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchList = null,Object? idleList = null,Object? isLoading = null,Object? isError = null,Object? searchQuery = null,}) {
  return _then(_self.copyWith(
searchList: null == searchList ? _self.searchList : searchList // ignore: cast_nullable_to_non_nullable
as List<SearchResultModel>,idleList: null == idleList ? _self.idleList : idleList // ignore: cast_nullable_to_non_nullable
as List<Downloads>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchState value)  $default,){
final _that = this;
switch (_that) {
case _SearchState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SearchResultModel> searchList,  List<Downloads> idleList,  bool isLoading,  bool isError,  String searchQuery)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.searchList,_that.idleList,_that.isLoading,_that.isError,_that.searchQuery);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SearchResultModel> searchList,  List<Downloads> idleList,  bool isLoading,  bool isError,  String searchQuery)  $default,) {final _that = this;
switch (_that) {
case _SearchState():
return $default(_that.searchList,_that.idleList,_that.isLoading,_that.isError,_that.searchQuery);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SearchResultModel> searchList,  List<Downloads> idleList,  bool isLoading,  bool isError,  String searchQuery)?  $default,) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.searchList,_that.idleList,_that.isLoading,_that.isError,_that.searchQuery);case _:
  return null;

}
}

}

/// @nodoc


class _SearchState implements SearchState {
  const _SearchState({required final  List<SearchResultModel> searchList, required final  List<Downloads> idleList, required this.isLoading, required this.isError, required this.searchQuery}): _searchList = searchList,_idleList = idleList;
  

 final  List<SearchResultModel> _searchList;
@override List<SearchResultModel> get searchList {
  if (_searchList is EqualUnmodifiableListView) return _searchList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchList);
}

 final  List<Downloads> _idleList;
@override List<Downloads> get idleList {
  if (_idleList is EqualUnmodifiableListView) return _idleList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_idleList);
}

@override final  bool isLoading;
@override final  bool isError;
@override final  String searchQuery;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&const DeepCollectionEquality().equals(other._searchList, _searchList)&&const DeepCollectionEquality().equals(other._idleList, _idleList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_searchList),const DeepCollectionEquality().hash(_idleList),isLoading,isError,searchQuery);

@override
String toString() {
  return 'SearchState(searchList: $searchList, idleList: $idleList, isLoading: $isLoading, isError: $isError, searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 List<SearchResultModel> searchList, List<Downloads> idleList, bool isLoading, bool isError, String searchQuery
});




}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchList = null,Object? idleList = null,Object? isLoading = null,Object? isError = null,Object? searchQuery = null,}) {
  return _then(_SearchState(
searchList: null == searchList ? _self._searchList : searchList // ignore: cast_nullable_to_non_nullable
as List<SearchResultModel>,idleList: null == idleList ? _self._idleList : idleList // ignore: cast_nullable_to_non_nullable
as List<Downloads>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
