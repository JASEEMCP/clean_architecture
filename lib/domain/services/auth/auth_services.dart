import 'package:app/domain/auth/token.dart';
import 'package:app/domain/failure/api_failure.dart';
import 'package:dartz/dartz.dart';

abstract class AuthServices {
  Future<Either<ApiFailure, Token>> login(String identifier, String password);
  Future<Either<ApiFailure, String>> logout();
  Future<Either<ApiFailure, Token>> refresh();
  Future<Either<ApiFailure, String>> createUser(Object data);
}
