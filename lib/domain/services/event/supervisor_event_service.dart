import 'package:app/domain/failure/api_failure.dart';
import 'package:app/domain/model/captain/captain_event_list_model/captain_event_list_model.dart';
import 'package:dartz/dartz.dart';

abstract class SupervisorEventService {
  Future<Either<ApiFailure, List<CaptainEventListModel>>> getEventList(
    String status,
  );

  Future<Either<ApiFailure, String>> confirmEvent(String id);
}
