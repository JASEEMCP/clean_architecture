class EndPoints {
  static const String root = "api/v1";
  static const String login = "$root/auth/login/";
  static const String refresh = "$root/auth/token/refresh/";
  static const String logout = "$root/auth/logout/";

  ///Captain API

  static String adminEventList(String status) =>
      "$root/admin/event-list/?status=$status";
  static String captainEventList(String status) =>
      "$root/captain/event-list/?status=$status";

  static String captainEventConfirm(String id) =>
      "$root/captain/event/confirm/$id/";

  /// supervisor Api
  static String boyEventList(String status) =>
      "$root/boys/event-list/?status=$status";
  static String boyEventConfirm(String id) => "$root/boys/event/confirm/$id/";

  /// BSupervisor Api
  static String supervisorEventList(String status) =>
      "$root/supervisor/event-list/?status=$status";
  static String supervisorEventConfirm(String id) =>
      "$root/captain/event/confirm/$id/";
}
