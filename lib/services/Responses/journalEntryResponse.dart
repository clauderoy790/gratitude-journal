import 'package:gratitudejournal/services/Responses/quote.dart';

class JournalEntryResponse {
  final String id;
  final String userID;
  final String date;
  final String grateful1;
  final String grateful2;
  final String grateful3;
  final String todayGreat1;
  final String todayGreat2;
  final String todayGreat3;
  final String affirmation1;
  final String affirmation2;
  final String happenedGreat1;
  final String happenedGreat2;
  final String happenedGreat3;
  final String better1;
  final String better2;
  final Quote quote;

  JournalEntryResponse({
    required this.id,
    required this.userID,
    required this.date,
    required this.grateful1,
    required this.grateful2,
    required this.grateful3,
    required this.todayGreat1,
    required this.todayGreat2,
    required this.todayGreat3,
    required this.affirmation1,
    required this.affirmation2,
    required this.happenedGreat1,
    required this.happenedGreat2,
    required this.happenedGreat3,
    required this.better1,
    required this.better2,
    required this.quote,
  });

  factory JournalEntryResponse.fromJson(Map<String, dynamic> json) {
    return JournalEntryResponse(
      id: json['_id'],
      userID: json['userID'],
      date: json['date'],
      grateful1: json['grateful1'],
      grateful2: json['grateful2'],
      grateful3: json['grateful3'],
      todayGreat1: json['todayGreat1'],
      todayGreat2: json['todayGreat2'],
      todayGreat3: json['todayGreat3'],
      affirmation1: json['affirmation1'],
      affirmation2: json['affirmation2'],
      happenedGreat1: json['happenedGreat1'],
      happenedGreat2: json['happenedGreat2'],
      happenedGreat3: json['happenedGreat3'],
      better1: json['better1'],
      better2: json['better2'],
      quote: json['quote'],
    );
  }
}
