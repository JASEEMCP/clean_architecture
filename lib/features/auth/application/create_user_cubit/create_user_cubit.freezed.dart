// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateUserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateUserState()';
}


}

/// @nodoc
class $CreateUserStateCopyWith<$Res>  {
$CreateUserStateCopyWith(CreateUserState _, $Res Function(CreateUserState) __);
}


/// Adds pattern-matching-related methods to [CreateUserState].
extension CreateUserStatePatterns on CreateUserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _loading value)?  loading,TResult Function( _error value)?  error,TResult Function( _success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _loading() when loading != null:
return loading(_that);case _error() when error != null:
return error(_that);case _success() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _loading value)  loading,required TResult Function( _error value)  error,required TResult Function( _success value)  success,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _loading():
return loading(_that);case _error():
return error(_that);case _success():
return success(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _loading value)?  loading,TResult? Function( _error value)?  error,TResult? Function( _success value)?  success,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _loading() when loading != null:
return loading(_that);case _error() when error != null:
return error(_that);case _success() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( ApiFailure e)?  error,TResult Function()?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _loading() when loading != null:
return loading();case _error() when error != null:
return error(_that.e);case _success() when success != null:
return success();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( ApiFailure e)  error,required TResult Function()  success,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _loading():
return loading();case _error():
return error(_that.e);case _success():
return success();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( ApiFailure e)?  error,TResult? Function()?  success,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _loading() when loading != null:
return loading();case _error() when error != null:
return error(_that.e);case _success() when success != null:
return success();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CreateUserState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateUserState.initial()';
}


}




/// @nodoc


class _loading implements CreateUserState {
  const _loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateUserState.loading()';
}


}




/// @nodoc


class _error implements CreateUserState {
  const _error(this.e);
  

 final  ApiFailure e;

/// Create a copy of CreateUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$errorCopyWith<_error> get copyWith => __$errorCopyWithImpl<_error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _error&&(identical(other.e, e) || other.e == e));
}


@override
int get hashCode => Object.hash(runtimeType,e);

@override
String toString() {
  return 'CreateUserState.error(e: $e)';
}


}

/// @nodoc
abstract mixin class _$errorCopyWith<$Res> implements $CreateUserStateCopyWith<$Res> {
  factory _$errorCopyWith(_error value, $Res Function(_error) _then) = __$errorCopyWithImpl;
@useResult
$Res call({
 ApiFailure e
});


$ApiFailureCopyWith<$Res> get e;

}
/// @nodoc
class __$errorCopyWithImpl<$Res>
    implements _$errorCopyWith<$Res> {
  __$errorCopyWithImpl(this._self, this._then);

  final _error _self;
  final $Res Function(_error) _then;

/// Create a copy of CreateUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? e = null,}) {
  return _then(_error(
null == e ? _self.e : e // ignore: cast_nullable_to_non_nullable
as ApiFailure,
  ));
}

/// Create a copy of CreateUserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiFailureCopyWith<$Res> get e {
  
  return $ApiFailureCopyWith<$Res>(_self.e, (value) {
    return _then(_self.copyWith(e: value));
  });
}
}

/// @nodoc


class _success implements CreateUserState {
  const _success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateUserState.success()';
}


}




// dart format on
