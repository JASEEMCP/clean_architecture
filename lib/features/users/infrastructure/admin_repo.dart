import 'dart:developer';
import 'dart:io';

import 'package:app/core/network/failure/api_failure.dart';
import 'package:app/features/events/domain/model/captain/captain_event_list_model/captain_event_list_model.dart';
import 'package:app/features/users/domain/services/admin_services.dart';
import 'package:app/main.dart';
import 'package:app/core/network/api/end_points.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AdminServices)
class AdminRepo implements AdminServices {
  @override
  Future<Either<ApiFailure, String>> createEvent(Object data) async {
    try {
      final response = await dio.instance.post(
        "api/v1/admin/add-event/",
        data: data,
      );

      if (response.statusCode == 201) {
        return Right("Event Created");
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

  @override
  Future<Either<ApiFailure, List<CaptainEventListModel>>> getEventList(
    String status,
  ) async {
    try {
      List<CaptainEventListModel> eventList = [];
      final response = await dio.instance.get(
        EndPoints.adminEventList(status),
      );
      log(response.data.toString());
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
}
