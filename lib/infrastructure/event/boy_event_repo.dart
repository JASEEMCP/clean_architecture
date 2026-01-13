import 'dart:io';

import 'package:app/domain/failure/api_failure.dart';
import 'package:app/domain/model/boy/boy_event_detail_model/boy_event_detail_model.dart';
import 'package:app/domain/model/captain/captain_event_list_model/captain_event_list_model.dart';
import 'package:app/domain/services/event/boy_event_service.dart';
import 'package:app/main.dart';
import 'package:app/resource/api/end_points.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BoyEventService)
class BoyEventRepo implements BoyEventService {
  @override
  Future<Either<ApiFailure, List<CaptainEventListModel>>> getEventList(
    String status,
  ) async {
    try {
      print('hello');
      List<CaptainEventListModel> eventList = [];
      final response = await dio.instance.get(
        EndPoints.boyEventList(status),
      );
      print(response.data);
      if (response.statusCode == 200) {
        eventList = (response.data as List)
            .map((e) => CaptainEventListModel.fromJson(e))
            .toList();

        return Right(eventList);
      } else {
        return Left(ApiFailure.clientError());
      }
    } on DioException catch (e) {
      print(e.response?.data);
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
        "/api/v1/boys/event/confirm/$id/",
      );
      print(response.data);
      if (response.statusCode == 200) {
        return Right("Event confirmed");
      } else {
        return Left(ApiFailure.clientError());
      }
    } on DioException catch (e) {
      print(e.requestOptions.uri);
      if (e is SocketException) {
        return Left(ApiFailure.custom("No internet connection"));
      } else {
        return Left(ApiFailure.serverError());
      }
    }
  }

  @override
  Future<Either<ApiFailure, BoyEventDetailModel>> eventDetail(String id) async {
    try {
      final response = await dio.instance.get(
        "/api/v1/boys/event/detail/$id/",
      );
      print(response.data);
      if (response.statusCode == 200) {
        return Right(BoyEventDetailModel.fromJson(response.data));
      } else {
        return Left(ApiFailure.clientError());
      }
    } on DioException catch (e) {
      print(e.requestOptions.uri);
      if (e is SocketException) {
        return Left(ApiFailure.custom("No internet connection"));
      } else {
        return Left(ApiFailure.serverError());
      }
    }
  }
}
