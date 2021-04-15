import "package:intl/intl.dart";

class DateValidation {
  static final _dateFormatter = DateFormat("y/M/d");

  static bool isDate(String datetimeStr) {
    DateTime date;

    try {
      date = _dateFormatter.parseStrict(datetimeStr);
    } catch (e) {
      return false;
    }
    return true;
  }
}
