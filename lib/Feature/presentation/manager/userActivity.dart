import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class UserActivity with ChangeNotifier, DiagnosticableTreeMixin {
  Color common = const Color(0xFFFFFFFF);
  Color active = const Color(0xFFFF0088);

  Color rC = const Color(0xFFFF0088);
  Color hC = const Color(0xFFFFFFFF);
  Color nC = const Color(0xFFFFFFFF);
  Color pC = const Color(0xFFFFFFFF);

  bool R = true;
  bool H = false;
  bool N = false;
  bool P = false;

  bool get isRide => R;
  bool get isHistory => H;
  bool get isNotifi => N;
  bool get isProfile => P;

  Color get activeRide => rC;
  Color get activeHistory => hC;
  Color get activeNotifi => nC;
  Color get activeProfile => pC;

  void getRides() {
    rC = active;
    hC = common;
    nC = common;
    pC = common;
    R = true;
    H = false;
    N = false;
    P = false;
    notifyListeners();
  }


  void getHistory() {
    rC = common;
    hC = active;
    nC = common;
    pC = common;
    R = false;
    H = true;
    N = false;
    P = false;
    notifyListeners();
  }

  void getNotification() {
    rC = common;
    hC = common;
    nC = active;
    pC = common;
    R = false;
    H = false;
    N = true;
    P = false;
    notifyListeners();
  }

  void getProfile() {
    rC = common;
    hC = common;
    nC = common;
    pC = active;
    R = false;
    H = false;
    N = false;
    P = true;
    notifyListeners();
  }


}
