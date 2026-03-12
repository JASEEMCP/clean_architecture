import 'package:app/core/network/failure/api_failure.dart';
import 'package:app/features/events/domain/model/boy/boy_event_detail_model/boy_event_detail_model.dart';
import 'package:app/features/events/domain/model/captain/captain_event_list_model/captain_event_list_model.dart';
import 'package:dartz/dartz.dart';

abstract class BoyEventService {
  Future<Either<ApiFailure, List<CaptainEventListModel>>> getEventList(
    String status,
  );

  Future<Either<ApiFailure, String>> confirmEvent(String id);

  Future<Either<ApiFailure, BoyEventDetailModel>> eventDetail(String id);
}
