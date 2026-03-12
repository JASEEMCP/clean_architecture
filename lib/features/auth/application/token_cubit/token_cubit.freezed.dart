// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TokenState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TokenState()';
}


}

/// @nodoc
class $TokenStateCopyWith<$Res>  {
$TokenStateCopyWith(TokenState _, $Res Function(TokenState) __);
}


/// Adds pattern-matching-related methods to [TokenState].
extension TokenStatePatterns on TokenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Authorized value)?  authorized,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Authorized() when authorized != null:
return authorized(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Authorized value)  authorized,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Authorized():
return authorized(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Authorized value)?  authorized,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Authorized() when authorized != null:
return authorized(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( Token? token)?  authorized,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Authorized() when authorized != null:
return authorized(_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( Token? token)  authorized,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Authorized():
return authorized(_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( Token? token)?  authorized,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Authorized() when authorized != null:
return authorized(_that.token);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements TokenState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TokenState.initial()';
}


}




/// @nodoc


class _Authorized implements TokenState {
  const _Authorized(this.token);
  

 final  Token? token;

/// Create a copy of TokenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorizedCopyWith<_Authorized> get copyWith => __$AuthorizedCopyWithImpl<_Authorized>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Authorized&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'TokenState.authorized(token: $token)';
}


}

/// @nodoc
abstract mixin class _$AuthorizedCopyWith<$Res> implements $TokenStateCopyWith<$Res> {
  factory _$AuthorizedCopyWith(_Authorized value, $Res Function(_Authorized) _then) = __$AuthorizedCopyWithImpl;
@useResult
$Res call({
 Token? token
});




}
/// @nodoc
class __$AuthorizedCopyWithImpl<$Res>
    implements _$AuthorizedCopyWith<$Res> {
  __$AuthorizedCopyWithImpl(this._self, this._then);

  final _Authorized _self;
  final $Res Function(_Authorized) _then;

/// Create a copy of TokenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? token = freezed,}) {
  return _then(_Authorized(
freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as Token?,
  ));
}


}

// dart format on
