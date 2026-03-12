import 'dart:developer';
import 'dart:io';
import 'package:app/core/network/failure/api_failure.dart';
import 'package:app/features/users/domain/model/user_list_model/user_list_model.dart';
import 'package:app/features/users/domain/services/user_services.dart';
import 'package:app/main.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserServices)
class UserRepo implements UserServices {
  @override
  Future<Either<ApiFailure, List<UserListModel>>> getUserList(
    String? search,
    String? eventId,
  ) async {
    try {
      List<UserListModel> item = [];
      final Response response;
      if (eventId == null) {
        response = await dio.instance.get(
          search == null
              ? "api/v1/auth/list-users/"
              : "api/v1/auth/list-users/?search=$search",
        );
      } else {
        response = await dio.instance.get(
          search == null
              ? "api/v1/auth/list-users/?event_id=$eventId"
              : "api/v1/auth/list-users/?search=$search&event_id=$eventId",
        );
      }

      if (response.statusCode == 200) {
        item = (response.data as List)
            .map((e) => UserListModel.fromJson(e))
            .toList();
        return Right(item);
      } else {
        return Left(ApiFailure.clientError());
      }
    } on DioException catch (e) {
      if (e is SocketException) {
        return Left(ApiFailure.custom("No internet connection"));
      } else {
        return Left(ApiFailure.serverError());
      }
    }
  }

  @override
  Future<Either<ApiFailure, String>> markAttendance(
    String type,
    Object data,
  ) async {
    try {
      final response = await dio.instance.post(
        "api/v1/auth/event-workers/attendance/?action=$type",
        data: data,
      );
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        return Right("Attendance Marked");
      } else {
        return Left(ApiFailure.clientError());
      }
    } on DioException catch (e) {
      if (e is SocketException) {
        return Left(ApiFailure.custom("No internet connection"));
      } else {
        return Left(ApiFailure.serverError());
      }
    }
  }

  @override
  Future<Either<ApiFailure, String>> addReport(Object data) async {
    try {
      final response = await dio.instance.post(
        "api/v1/auth/event-worker/report/",
        data: data,
      );

      if (response.statusCode == 201) {
        return Right("Report Sended");
      } else {
        return Left(ApiFailure.clientError());
      }
    } on DioException catch (e) {
      log(e.requestOptions.uri.toString());
      log(e.response?.data);
      if (e is SocketException) {
        return Left(ApiFailure.custom("No internet connection"));
      } else {
        return Left(ApiFailure.serverError());
      }
    }
  }
}
