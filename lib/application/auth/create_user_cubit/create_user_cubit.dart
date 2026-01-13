import 'package:app/domain/failure/api_failure.dart';
import 'package:app/domain/services/auth/auth_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_user_state.dart';
part 'create_user_cubit.freezed.dart';

@injectable
class CreateUserCubit extends Cubit<CreateUserState> {
  final AuthServices _authServices;
  CreateUserCubit(this._authServices) : super(CreateUserState.initial());

  createNewUser(Object obj) async {
    emit(CreateUserState.loading());

    final res = await _authServices.createUser(obj);

    res.fold(
      (e) => emit(CreateUserState.error(e)),
      (s) => emit(CreateUserState.success()),
    );
  }
}
