import 'package:app/domain/failure/api_failure.dart';
import 'package:app/domain/model/captain/captain_detail_model/captain_detail_model.dart';
import 'package:app/domain/model/captain/captain_event_list_model/captain_event_list_model.dart';
import 'package:dartz/dartz.dart';

abstract class CaptainEventService {
  Future<Either<ApiFailure, List<CaptainEventListModel>>> getEventList(
    String status,
  );

  Future<Either<ApiFailure, String>> confirmEvent(String id);
  Future<Either<ApiFailure, String>> addUserToEvent(String eventId,List<String> userId);
  Future<Either<ApiFailure, String>> removeUserFromEvent(List<String> workerId);

  Future<Either<ApiFailure, CaptainDetailModel>> eventDetail(String id);
}
