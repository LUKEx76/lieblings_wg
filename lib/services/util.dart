String dateToDisplayString(DateTime? date) {
  String result = "";
  if (date == null) {
    return "00.00.0000";
  }
  if (date.day < 10) {
    result += "0" + date.day.toString();
  } else {
    result += date.day.toString();
  }
  result += ".";
  if (date.month < 10) {
    result += "0" + date.month.toString();
  } else {
    result += date.month.toString();
  }

  result += "." + (date.year - 2000).toString();

  return result;
}
