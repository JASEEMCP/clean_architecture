// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApiFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiFailure()';
}


}

/// @nodoc
class $ApiFailureCopyWith<$Res>  {
$ApiFailureCopyWith(ApiFailure _, $Res Function(ApiFailure) __);
}


/// Adds pattern-matching-related methods to [ApiFailure].
extension ApiFailurePatterns on ApiFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ClientError value)?  clientError,TResult Function( _ServerError value)?  serverError,TResult Function( _NetworkError value)?  networkError,TResult Function( _UnAuthorized value)?  unauthorized,TResult Function( _Cancelled value)?  cancelled,TResult Function( _Unknown value)?  unknown,TResult Function( _Custom value)?  custom,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClientError() when clientError != null:
return clientError(_that);case _ServerError() when serverError != null:
return serverError(_that);case _NetworkError() when networkError != null:
return networkError(_that);case _UnAuthorized() when unauthorized != null:
return unauthorized(_that);case _Cancelled() when cancelled != null:
return cancelled(_that);case _Unknown() when unknown != null:
return unknown(_that);case _Custom() when custom != null:
return custom(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ClientError value)  clientError,required TResult Function( _ServerError value)  serverError,required TResult Function( _NetworkError value)  networkError,required TResult Function( _UnAuthorized value)  unauthorized,required TResult Function( _Cancelled value)  cancelled,required TResult Function( _Unknown value)  unknown,required TResult Function( _Custom value)  custom,}){
final _that = this;
switch (_that) {
case _ClientError():
return clientError(_that);case _ServerError():
return serverError(_that);case _NetworkError():
return networkError(_that);case _UnAuthorized():
return unauthorized(_that);case _Cancelled():
return cancelled(_that);case _Unknown():
return unknown(_that);case _Custom():
return custom(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ClientError value)?  clientError,TResult? Function( _ServerError value)?  serverError,TResult? Function( _NetworkError value)?  networkError,TResult? Function( _UnAuthorized value)?  unauthorized,TResult? Function( _Cancelled value)?  cancelled,TResult? Function( _Unknown value)?  unknown,TResult? Function( _Custom value)?  custom,}){
final _that = this;
switch (_that) {
case _ClientError() when clientError != null:
return clientError(_that);case _ServerError() when serverError != null:
return serverError(_that);case _NetworkError() when networkError != null:
return networkError(_that);case _UnAuthorized() when unauthorized != null:
return unauthorized(_that);case _Cancelled() when cancelled != null:
return cancelled(_that);case _Unknown() when unknown != null:
return unknown(_that);case _Custom() when custom != null:
return custom(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  clientError,TResult Function()?  serverError,TResult Function()?  networkError,TResult Function()?  unauthorized,TResult Function()?  cancelled,TResult Function()?  unknown,TResult Function( String e)?  custom,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClientError() when clientError != null:
return clientError();case _ServerError() when serverError != null:
return serverError();case _NetworkError() when networkError != null:
return networkError();case _UnAuthorized() when unauthorized != null:
return unauthorized();case _Cancelled() when cancelled != null:
return cancelled();case _Unknown() when unknown != null:
return unknown();case _Custom() when custom != null:
return custom(_that.e);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  clientError,required TResult Function()  serverError,required TResult Function()  networkError,required TResult Function()  unauthorized,required TResult Function()  cancelled,required TResult Function()  unknown,required TResult Function( String e)  custom,}) {final _that = this;
switch (_that) {
case _ClientError():
return clientError();case _ServerError():
return serverError();case _NetworkError():
return networkError();case _UnAuthorized():
return unauthorized();case _Cancelled():
return cancelled();case _Unknown():
return unknown();case _Custom():
return custom(_that.e);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  clientError,TResult? Function()?  serverError,TResult? Function()?  networkError,TResult? Function()?  unauthorized,TResult? Function()?  cancelled,TResult? Function()?  unknown,TResult? Function( String e)?  custom,}) {final _that = this;
switch (_that) {
case _ClientError() when clientError != null:
return clientError();case _ServerError() when serverError != null:
return serverError();case _NetworkError() when networkError != null:
return networkError();case _UnAuthorized() when unauthorized != null:
return unauthorized();case _Cancelled() when cancelled != null:
return cancelled();case _Unknown() when unknown != null:
return unknown();case _Custom() when custom != null:
return custom(_that.e);case _:
  return null;

}
}

}

/// @nodoc


class _ClientError implements ApiFailure {
  const _ClientError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClientError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiFailure.clientError()';
}


}




/// @nodoc


class _ServerError implements ApiFailure {
  const _ServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiFailure.serverError()';
}


}




/// @nodoc


class _NetworkError implements ApiFailure {
  const _NetworkError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiFailure.networkError()';
}


}




/// @nodoc


class _UnAuthorized implements ApiFailure {
  const _UnAuthorized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnAuthorized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiFailure.unauthorized()';
}


}




/// @nodoc


class _Cancelled implements ApiFailure {
  const _Cancelled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cancelled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiFailure.cancelled()';
}


}




/// @nodoc


class _Unknown implements ApiFailure {
  const _Unknown();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unknown);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiFailure.unknown()';
}


}




/// @nodoc


class _Custom implements ApiFailure {
  const _Custom(this.e);
  

 final  String e;

/// Create a copy of ApiFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomCopyWith<_Custom> get copyWith => __$CustomCopyWithImpl<_Custom>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Custom&&(identical(other.e, e) || other.e == e));
}


@override
int get hashCode => Object.hash(runtimeType,e);

@override
String toString() {
  return 'ApiFailure.custom(e: $e)';
}


}

/// @nodoc
abstract mixin class _$CustomCopyWith<$Res> implements $ApiFailureCopyWith<$Res> {
  factory _$CustomCopyWith(_Custom value, $Res Function(_Custom) _then) = __$CustomCopyWithImpl;
@useResult
$Res call({
 String e
});




}
/// @nodoc
class __$CustomCopyWithImpl<$Res>
    implements _$CustomCopyWith<$Res> {
  __$CustomCopyWithImpl(this._self, this._then);

  final _Custom _self;
  final $Res Function(_Custom) _then;

/// Create a copy of ApiFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? e = null,}) {
  return _then(_Custom(
null == e ? _self.e : e // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
