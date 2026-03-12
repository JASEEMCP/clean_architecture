import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_failure.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  const factory ApiFailure.clientError() = _ClientError;
  const factory ApiFailure.serverError() = _ServerError;
  const factory ApiFailure.networkError() = _NetworkError;
  const factory ApiFailure.unauthorized() = _UnAuthorized;
  const factory ApiFailure.cancelled() = _Cancelled;
  const factory ApiFailure.unknown() = _Unknown;
  const factory ApiFailure.custom(String e) = _Custom;
}

extension ApiFailureX on ApiFailure {
  String get errorDescription => maybeWhen(
    orElse: () => "Something went wrong",
    cancelled: () => "Cancelled by user",
    custom: (e) => e.toString(),
  );
}
