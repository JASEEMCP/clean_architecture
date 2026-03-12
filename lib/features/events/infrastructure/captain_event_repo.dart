import 'dart:developer';
import 'dart:io';

import 'package:app/core/network/failure/api_failure.dart';
import 'package:app/features/events/domain/model/captain/captain_detail_model/captain_detail_model.dart';
import 'package:app/features/events/domain/model/captain/captain_event_list_model/captain_event_list_model.dart';
import 'package:app/features/events/domain/services/captain_event_service.dart';
import 'package:app/main.dart';
import 'package:app/core/network/api/end_points.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CaptainEventService)
class CaptainEventRepo implements CaptainEventService {
  @override
  Future<Either<ApiFailure, List<CaptainEventListModel>>> getEventList(
    String status,
  ) async {
    try {
      List<CaptainEventListModel> eventList = [];
      final response = await dio.instance.get(
        EndPoints.captainEventList(status),
      );
      log(response.data);

      if (response.statusCode == 200) {
        eventList = (response.data as List)
            .map((e) => CaptainEventListModel.fromJson(e))
            .toList();

        return Right(eventList);
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
  Future<Either<ApiFailure, String>> confirmEvent(String id) async {
    try {
      final response = await dio.instance.post(
        "api/v1/captain/event/confirm/$id/",
      );
      log(response.data);
      if (response.statusCode == 200) {
        return Right("Event confirmed");
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
  Future<Either<ApiFailure, CaptainDetailModel>> eventDetail(String id) async {
    try {
      final response = await dio.instance.get(
        "api/v1/${pref.token.value.userType}/event/detail/$id/",
      );
      log(response.data.toString());
      if (response.statusCode == 200) {
        return Right(CaptainDetailModel.fromJson(response.data));
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
  Future<Either<ApiFailure, String>> addUserToEvent(
    String eventId,
    List<String> userId,
  ) async {
    try {
      final response = await dio.instance.post(
        "api/v1/auth/add-user/events/$eventId/",
        data: {
          'user_ids': userId,
        },
      );

      if (response.statusCode == 201) {
        return Right("User added");
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
  Future<Either<ApiFailure, String>> removeUserFromEvent(
    List<String> workerId,
  ) async {
    try {
      final response = await dio.instance.post(
        "api/v1/auth/remove-user/events/",
        data: {
          'worker_ids': workerId,
        },
      );
      log(response.data);
      if (response.statusCode == 200) {
        return Right("Workers Removed");
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
}
