part of 'create_user_cubit.dart';

@freezed
class CreateUserState with _$CreateUserState {
  const factory CreateUserState.initial() = _Initial;
  const factory CreateUserState.loading() = _loading;
  const factory CreateUserState.error(ApiFailure e) = _error;
  const factory CreateUserState.success() = _success;
}

extension CreateUserStateX on CreateUserState {
  bool get isLoading => this is _loading;
}
