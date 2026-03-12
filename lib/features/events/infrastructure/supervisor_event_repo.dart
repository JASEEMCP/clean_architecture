import 'dart:developer';
import 'dart:io';

import 'package:app/core/network/failure/api_failure.dart';
import 'package:app/features/events/domain/model/captain/captain_event_list_model/captain_event_list_model.dart';
import 'package:app/features/events/domain/services/supervisor_event_service.dart';
import 'package:app/core/network/api/end_points.dart';
import 'package:app/core/utils/common_lib.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SupervisorEventService)
class SupervisorEventRepo implements SupervisorEventService {
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
      log(e.toString());
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
        "api/v1/supervisor/event/confirm/$id/",
      );

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
}
