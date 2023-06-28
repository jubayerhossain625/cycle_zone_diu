

import 'package:http/http.dart' as http;
import 'dart:convert';

import '../historyModel/historyModel.dart';

Future<List<History>> getHistoryData() async {
  final url = Uri.parse('https://cycle-server-nine.vercel.app/history/2'); // Replace with your API endpoint

  final response = await http.get(url);

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body) as List<History>;
    return data;
  } else {
    throw Exception('Failed to fetch data');
  }
}
