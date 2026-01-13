import 'package:app/domain/failure/api_failure.dart';
import 'package:app/domain/model/common/user_list_model/user_list_model.dart';
import 'package:dartz/dartz.dart';

abstract class UserServices {
  Future<Either<ApiFailure, List<UserListModel>>> getUserList(String? search,String? eventId);

  Future<Either<ApiFailure, String>> markAttendance(String type, Object data);

  Future<Either<ApiFailure, String>> addReport( Object data);
}
