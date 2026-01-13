// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ApiFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientError,
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unauthorized,
    required TResult Function() cancelled,
    required TResult Function() unknown,
    required TResult Function(String e) custom,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientError,
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? unauthorized,
    TResult? Function()? cancelled,
    TResult? Function()? unknown,
    TResult? Function(String e)? custom,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unauthorized,
    TResult Function()? cancelled,
    TResult Function()? unknown,
    TResult Function(String e)? custom,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientError value) clientError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnAuthorized value) unauthorized,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Custom value) custom,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientError value)? clientError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnAuthorized value)? unauthorized,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Custom value)? custom,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientError value)? clientError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnAuthorized value)? unauthorized,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Custom value)? custom,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiFailureCopyWith<$Res> {
  factory $ApiFailureCopyWith(
    ApiFailure value,
    $Res Function(ApiFailure) then,
  ) = _$ApiFailureCopyWithImpl<$Res, ApiFailure>;
}

/// @nodoc
class _$ApiFailureCopyWithImpl<$Res, $Val extends ApiFailure>
    implements $ApiFailureCopyWith<$Res> {
  _$ApiFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ClientErrorImplCopyWith<$Res> {
  factory _$$ClientErrorImplCopyWith(
    _$ClientErrorImpl value,
    $Res Function(_$ClientErrorImpl) then,
  ) = __$$ClientErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientErrorImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$ClientErrorImpl>
    implements _$$ClientErrorImplCopyWith<$Res> {
  __$$ClientErrorImplCopyWithImpl(
    _$ClientErrorImpl _value,
    $Res Function(_$ClientErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClientErrorImpl implements _ClientError {
  const _$ClientErrorImpl();

  @override
  String toString() {
    return 'ApiFailure.clientError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientError,
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unauthorized,
    required TResult Function() cancelled,
    required TResult Function() unknown,
    required TResult Function(String e) custom,
  }) {
    return clientError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientError,
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? unauthorized,
    TResult? Function()? cancelled,
    TResult? Function()? unknown,
    TResult? Function(String e)? custom,
  }) {
    return clientError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unauthorized,
    TResult Function()? cancelled,
    TResult Function()? unknown,
    TResult Function(String e)? custom,
    required TResult orElse(),
  }) {
    if (clientError != null) {
      return clientError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientError value) clientError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnAuthorized value) unauthorized,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Custom value) custom,
  }) {
    return clientError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientError value)? clientError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnAuthorized value)? unauthorized,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Custom value)? custom,
  }) {
    return clientError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientError value)? clientError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnAuthorized value)? unauthorized,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Custom value)? custom,
    required TResult orElse(),
  }) {
    if (clientError != null) {
      return clientError(this);
    }
    return orElse();
  }
}

abstract class _ClientError implements ApiFailure {
  const factory _ClientError() = _$ClientErrorImpl;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
    _$ServerErrorImpl value,
    $Res Function(_$ServerErrorImpl) then,
  ) = __$$ServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
    _$ServerErrorImpl _value,
    $Res Function(_$ServerErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl();

  @override
  String toString() {
    return 'ApiFailure.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientError,
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unauthorized,
    required TResult Function() cancelled,
    required TResult Function() unknown,
    required TResult Function(String e) custom,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientError,
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? unauthorized,
    TResult? Function()? cancelled,
    TResult? Function()? unknown,
    TResult? Function(String e)? custom,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unauthorized,
    TResult Function()? cancelled,
    TResult Function()? unknown,
    TResult Function(String e)? custom,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientError value) clientError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnAuthorized value) unauthorized,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Custom value) custom,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientError value)? clientError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnAuthorized value)? unauthorized,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Custom value)? custom,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientError value)? clientError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnAuthorized value)? unauthorized,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Custom value)? custom,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements ApiFailure {
  const factory _ServerError() = _$ServerErrorImpl;
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<$Res> {
  factory _$$NetworkErrorImplCopyWith(
    _$NetworkErrorImpl value,
    $Res Function(_$NetworkErrorImpl) then,
  ) = __$$NetworkErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$NetworkErrorImpl>
    implements _$$NetworkErrorImplCopyWith<$Res> {
  __$$NetworkErrorImplCopyWithImpl(
    _$NetworkErrorImpl _value,
    $Res Function(_$NetworkErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkErrorImpl implements _NetworkError {
  const _$NetworkErrorImpl();

  @override
  String toString() {
    return 'ApiFailure.networkError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientError,
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unauthorized,
    required TResult Function() cancelled,
    required TResult Function() unknown,
    required TResult Function(String e) custom,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientError,
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? unauthorized,
    TResult? Function()? cancelled,
    TResult? Function()? unknown,
    TResult? Function(String e)? custom,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unauthorized,
    TResult Function()? cancelled,
    TResult Function()? unknown,
    TResult Function(String e)? custom,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientError value) clientError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnAuthorized value) unauthorized,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Custom value) custom,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientError value)? clientError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnAuthorized value)? unauthorized,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Custom value)? custom,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientError value)? clientError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnAuthorized value)? unauthorized,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Custom value)? custom,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class _NetworkError implements ApiFailure {
  const factory _NetworkError() = _$NetworkErrorImpl;
}

/// @nodoc
abstract class _$$UnAuthorizedImplCopyWith<$Res> {
  factory _$$UnAuthorizedImplCopyWith(
    _$UnAuthorizedImpl value,
    $Res Function(_$UnAuthorizedImpl) then,
  ) = __$$UnAuthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthorizedImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$UnAuthorizedImpl>
    implements _$$UnAuthorizedImplCopyWith<$Res> {
  __$$UnAuthorizedImplCopyWithImpl(
    _$UnAuthorizedImpl _value,
    $Res Function(_$UnAuthorizedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnAuthorizedImpl implements _UnAuthorized {
  const _$UnAuthorizedImpl();

  @override
  String toString() {
    return 'ApiFailure.unauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientError,
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unauthorized,
    required TResult Function() cancelled,
    required TResult Function() unknown,
    required TResult Function(String e) custom,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientError,
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? unauthorized,
    TResult? Function()? cancelled,
    TResult? Function()? unknown,
    TResult? Function(String e)? custom,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unauthorized,
    TResult Function()? cancelled,
    TResult Function()? unknown,
    TResult Function(String e)? custom,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientError value) clientError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnAuthorized value) unauthorized,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Custom value) custom,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientError value)? clientError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnAuthorized value)? unauthorized,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Custom value)? custom,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientError value)? clientError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnAuthorized value)? unauthorized,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Custom value)? custom,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorized implements ApiFailure {
  const factory _UnAuthorized() = _$UnAuthorizedImpl;
}

/// @nodoc
abstract class _$$CancelledImplCopyWith<$Res> {
  factory _$$CancelledImplCopyWith(
    _$CancelledImpl value,
    $Res Function(_$CancelledImpl) then,
  ) = __$$CancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelledImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$CancelledImpl>
    implements _$$CancelledImplCopyWith<$Res> {
  __$$CancelledImplCopyWithImpl(
    _$CancelledImpl _value,
    $Res Function(_$CancelledImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CancelledImpl implements _Cancelled {
  const _$CancelledImpl();

  @override
  String toString() {
    return 'ApiFailure.cancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientError,
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unauthorized,
    required TResult Function() cancelled,
    required TResult Function() unknown,
    required TResult Function(String e) custom,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientError,
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? unauthorized,
    TResult? Function()? cancelled,
    TResult? Function()? unknown,
    TResult? Function(String e)? custom,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unauthorized,
    TResult Function()? cancelled,
    TResult Function()? unknown,
    TResult Function(String e)? custom,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientError value) clientError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnAuthorized value) unauthorized,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Custom value) custom,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientError value)? clientError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnAuthorized value)? unauthorized,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Custom value)? custom,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientError value)? clientError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnAuthorized value)? unauthorized,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Custom value)? custom,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class _Cancelled implements ApiFailure {
  const factory _Cancelled() = _$CancelledImpl;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
    _$UnknownImpl value,
    $Res Function(_$UnknownImpl) then,
  ) = __$$UnknownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
    _$UnknownImpl _value,
    $Res Function(_$UnknownImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnknownImpl implements _Unknown {
  const _$UnknownImpl();

  @override
  String toString() {
    return 'ApiFailure.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientError,
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unauthorized,
    required TResult Function() cancelled,
    required TResult Function() unknown,
    required TResult Function(String e) custom,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientError,
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? unauthorized,
    TResult? Function()? cancelled,
    TResult? Function()? unknown,
    TResult? Function(String e)? custom,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unauthorized,
    TResult Function()? cancelled,
    TResult Function()? unknown,
    TResult Function(String e)? custom,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientError value) clientError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnAuthorized value) unauthorized,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Custom value) custom,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientError value)? clientError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnAuthorized value)? unauthorized,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Custom value)? custom,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientError value)? clientError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnAuthorized value)? unauthorized,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Custom value)? custom,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements ApiFailure {
  const factory _Unknown() = _$UnknownImpl;
}

/// @nodoc
abstract class _$$CustomImplCopyWith<$Res> {
  factory _$$CustomImplCopyWith(
    _$CustomImpl value,
    $Res Function(_$CustomImpl) then,
  ) = __$$CustomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String e});
}

/// @nodoc
class __$$CustomImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$CustomImpl>
    implements _$$CustomImplCopyWith<$Res> {
  __$$CustomImplCopyWithImpl(
    _$CustomImpl _value,
    $Res Function(_$CustomImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? e = null}) {
    return _then(
      _$CustomImpl(
        null == e
            ? _value.e
            : e // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CustomImpl implements _Custom {
  const _$CustomImpl(this.e);

  @override
  final String e;

  @override
  String toString() {
    return 'ApiFailure.custom(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomImpl &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomImplCopyWith<_$CustomImpl> get copyWith =>
      __$$CustomImplCopyWithImpl<_$CustomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientError,
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unauthorized,
    required TResult Function() cancelled,
    required TResult Function() unknown,
    required TResult Function(String e) custom,
  }) {
    return custom(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientError,
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? unauthorized,
    TResult? Function()? cancelled,
    TResult? Function()? unknown,
    TResult? Function(String e)? custom,
  }) {
    return custom?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unauthorized,
    TResult Function()? cancelled,
    TResult Function()? unknown,
    TResult Function(String e)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientError value) clientError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnAuthorized value) unauthorized,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Custom value) custom,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientError value)? clientError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnAuthorized value)? unauthorized,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Custom value)? custom,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientError value)? clientError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnAuthorized value)? unauthorized,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Custom value)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class _Custom implements ApiFailure {
  const factory _Custom(final String e) = _$CustomImpl;

  String get e;

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomImplCopyWith<_$CustomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
