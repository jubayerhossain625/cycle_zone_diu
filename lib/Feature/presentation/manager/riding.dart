
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:walk_mate/Feature/presentation/pages/user/notification/Model.dart';

import '../../common/appUtis.dart';
import '../pages/user/history/historyModel/historyModel.dart';

class Riding with ChangeNotifier,DiagnosticableTreeMixin{
  List<History> historyOld = [];

  List<History> get history => historyOld;


getRide(int cid,String rideDate,String startTime,String endTime,String cost) async {
  var uid = await getStorage.read(userId);
  print(cost);
    try {
      final res = await dio.post('https://cycle-server-nine.vercel.app/ride/create/$uid/$cid/$cost',
        data: {
          "rideDate": rideDate,
          "startTime": startTime,
          "endTime": endTime
      }
      );
      if(res !=null){
        print("Done");
      }else{
        print("error");
      }

    } catch (e) {
      print(e.toString());
    }
    notifyListeners();
  }


 // void getHistory()async {
 //    var uid = await getStorage.read(userId);
 //    try {
 //      final res = await dio.get('https://cycle-server-nine.vercel.app/history/$uid',);
 //      if(res !=null){
 //        final data = jsonDecode(res.data);
 //        print("Done");
 //        print(res.data);
 //      }else{
 //        print("error");
 //      }
 //
 //    } catch (e) {
 //      print(e.toString());
 //    }
 //    notifyListeners();
 //  }

  Future<List<History>> getHistoryData() async {
    var uid = await getStorage.read(userId);
    final url = Uri.parse('https://cycle-server-nine.vercel.app/history/$uid'); // Replace with your API endpoint

    final response = await http.get(url);

    if (response.statusCode == 200) {
      print(response.body);
      final jsonData = jsonDecode(response.body) as List<dynamic>;
      final List<History> data = jsonData.map((item) => History.fromJson(item)).toList();
      print(data);
   return data;
    } else {
      throw Exception('Failed to fetch data');
    }

  }

  Future<List<NotificationModel>> getNotificationData() async {

    var uid = await getStorage.read(userId);
    final url = Uri.parse('https://cycle-server-nine.vercel.app/notfication/$uid'); // Replace with your API endpoint

    final response = await http.get(url);

    if (response.statusCode == 200) {
      print(response.body);
      final jsonData = jsonDecode(response.body) as List<dynamic>;
      print(jsonData);

      final List<NotificationModel> data = jsonData.map((item) => NotificationModel.fromJson(item)).toList();
      // data.forEach((element) {
      //   print(element.title);
      //   print(element.description);
      //   print(element.userId);
      // });
      return data;
    } else {
      throw Exception('Failed to fetch data');
    }
  }




  createNotification() async {

    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd').format(now);
    String time = DateFormat('HH:mm:ss').format(now);
    String date = DateFormat.jm().format(DateFormat("hh:mm:ss").parse(time));


    var uid = await getStorage.read(userId);
    try {
      final res = await dio.post('https://cycle-server-nine.vercel.app/notfication/create/$uid',
          data: {
            "title":"Thanks for rides Date:$formattedDate",
            "description":"Time :$date Welcome to next rides"
          }
      );
      if(res !=null){
        print("Done");
      }else{
        print("error");
      }

    } catch (e) {
      print(e.toString());
    }
    notifyListeners();
  }


}