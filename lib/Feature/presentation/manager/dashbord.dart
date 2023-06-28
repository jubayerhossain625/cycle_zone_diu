
import 'package:flutter/foundation.dart';

import '../../common/appUtis.dart';

class DashBord with ChangeNotifier,DiagnosticableTreeMixin{

  var reward ='';

  String  get rePoint =>reward;

  var rides ='';

  String  get reRide =>rides;



  getData()async{

    var uid =  await getStorage.read(userId);
    try {
      final res = await dio.get('https://cycle-server-nine.vercel.app/dash/reward/$uid'
      );
      if(res != null){
        final r = res.data[0]['totalReward'];
        reward = r.toString();
        print(reward);
      }else{
        print("error");
      }

    } catch (e) {
      print(e.toString());
    }
    notifyListeners();
  }

  getRides()async{
    var uid =  await getStorage.read(userId);
    try {
      final res = await dio.get('https://cycle-server-nine.vercel.app/dash/rides/$uid',);
      if(res !=null){
        final r = res.data[0]['rideCount'];
        print(r);
        rides = r.toString();
      }else{
        print("error");
      }

    } catch (e) {
      print(e.toString());
    }
    notifyListeners();
  }


  getCycle(int cycleId)async{
    var uid =  await getStorage.read(userId);
    try {
      final res = await dio.get('https://cycle-server-nine.vercel.app/cycle/findcycle/$cycleId',);
      if(res !=null){
        final r = res.data['cycleId'];
        print(r);
      }else{
        print("error");
      }

    } catch (e) {
      print(e.toString());
    }
    notifyListeners();
  }

}