import 'dart:developer';
import 'dart:io';

import 'package:app/features/auth/domain/token.dart';
import 'package:app/core/network/failure/api_failure.dart';
import 'package:app/features/auth/domain/services/auth_services.dart';
import 'package:app/core/env/env.dart';
import 'package:app/main.dart';
import 'package:app/core/network/api/end_points.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthServices)
class AuthRepo implements AuthServices {
  @override
  Future<Either<ApiFailure, Token>> login(identifier, password) async {
    try {
      final response = await Dio().post(
        "${Env().apiBaseUrl}${EndPoints.login}",
        data: {
          "identifier": identifier,
          "password": password,
        },
      );

      if (response.statusCode == 200) {
        return Right(Token.fromJson(response.data));
      } else {
        return Left(ApiFailure.clientError());
      }
    } on DioException catch (e) {
      log(e.response?.data);
      if (e is SocketException) {
        return Left(ApiFailure.custom("Please check your internet connection"));
      }
      if (e.response?.statusCode == 401) {
        return Left(ApiFailure.custom("Invalid username or password"));
      } else {
        return Left(ApiFailure.serverError());
      }
    }
  }

  @override
  Future<Either<ApiFailure, String>> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailure, Token>> refresh() async {
    try {
      final response = await Dio().get(
        "${Env().apiBaseUrl}${EndPoints.refresh}",
        data: {
          "refresh": pref.token.value.refreshToken,
        },
      );

      if (response.statusCode == 200) {
        return Right(Token.fromJson(response.data));
      } else {
        return Left(ApiFailure.clientError());
      }
    } on DioException catch (e) {
      if (e is SocketException) {
        return Left(ApiFailure.custom("Please check your internet connection"));
      }
      if (e.response?.statusCode == 401) {
        return Left(ApiFailure.custom("Invalid username or password"));
      } else {
        return Left(ApiFailure.serverError());
      }
    }
  }

  @override
  Future<Either<ApiFailure, String>> createUser(Object data) async {
    try {
      final response = await dio.instance.post(
        "/api/v1/auth/create-user/",
        data: data,
      );
      log(response.data);
      if (response.statusCode == 201) {
        return Right("User created");
      } else {
        return Left(ApiFailure.clientError());
      }
    } on DioException catch (e) {
      log(e.response?.data);
      if (e is SocketException) {
        return Left(ApiFailure.custom("No internet connection"));
      } else {
        return Left(ApiFailure.serverError());
      }
    }
  }
}
