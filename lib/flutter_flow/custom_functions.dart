import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

List<CalendarDayStruct> getCalendarForMonth(DateTime inputDate) {
  List<CalendarDayStruct> calendarDays = [];

  DateTime firstOfMonth = DateTime(inputDate.year, inputDate.month, 1);

  int daysToPreviousMonday = (firstOfMonth.weekday - DateTime.monday) % 7;
  DateTime startCalendarDay =
      firstOfMonth.subtract(Duration(days: daysToPreviousMonday));

  for (int i = 0; i < 35; i++) {
    DateTime currentDay = startCalendarDay.add(Duration(days: i));
    bool isPreviousMonth = currentDay.month < firstOfMonth.month ||
        (currentDay.month > firstOfMonth.month && firstOfMonth.month == 12);

    bool isNextMonth = currentDay.month > firstOfMonth.month ||
        (currentDay.month < firstOfMonth.month && firstOfMonth.month == 1);

    calendarDays.add(CalendarDayStruct(
        calendarDate: currentDay,
        isPreviousMonth: isPreviousMonth,
        isNextMonth: isNextMonth));
  }

  return calendarDays;
}

DateTime getNextMonthDateTime(DateTime inputDate) {
  int year = inputDate.year;
  int month = inputDate.month;

  if (month == 12) {
    year++;
    month = 1;
  } else {
    month++;
  }
  return DateTime(year, month);
}

DateTime getLastMonthDateTime(DateTime inputDate) {
  int year = inputDate.year;
  int month = inputDate.month;

  if (month == 1) {
    year--;
    month = 12;
  } else {
    month--;
  }
  return DateTime(year, month);
}
