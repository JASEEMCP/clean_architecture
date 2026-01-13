import 'package:intl/intl.dart';

String formatDate(String inputDate) {
  try {
    // Parse input string (must be in yyyy-MM-dd format)
    DateTime date = DateTime.parse(inputDate);

    // Format it as "MMM dd yyyy"
    return DateFormat("MMM dd yyyy").format(date);
  } catch (e) {
    return "Invalid date"; // fallback
  }
}

String formatTime(String inputTime) {
  try {
    // Parse "19:00:00" as today's date with that time
    DateTime time = DateFormat("HH:mm:ss").parse(inputTime);

    // Format as "h a" → "7 PM"
    return DateFormat("h a").format(time);
  } catch (e) {
    return "Invalid time";
  }
}
