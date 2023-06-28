

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class ColorProvider with ChangeNotifier,DiagnosticableTreeMixin{

 Color green = const Color(0xFF20C56C);
 Color green1 = const Color(0xFF20C56C);
 Color black  = const Color(0xFF191A1B);
 Color white = const Color(0xFFFFFFFF);
 Color blue = const Color(0xFF20B2AA);
 Color blue1 = const Color(0xFFFFFFFF);
 Color blue2 = const Color(0xFF20B2AA);
 Color blue3 = const Color(0xFF20B2AA);

 bool home = true;
 bool blog = false;
 bool cont = false;
 bool join = false;
 bool isVisibility = true;

 bool get isHome => home;
 bool  get isBlog => blog;
 bool get isCont => cont;
 bool get isVisi => isVisibility;
 bool get isJoin => join;


 Color get activeJoin => green1;
 Color get activeHome => blue1;
 Color get activeContract => blue2;
 Color get activeBlog => blue3;



 void joinBtn(){
 home = false;
 blog = false;
 cont = false;
 join = true;

  green1 = white;
  blue1 = blue;
  blue2 =blue;
  blue3 = blue;
  notifyListeners();
 }

 void homeBtn(){

  home = true;
  blog = false;
  cont = false;
  join = false;

  green1 = green;
  blue1 = white;
  blue2 =blue;
  blue3 = blue;
  notifyListeners();
 }

 void blogBtn(){
  home = false;
  blog = true;
  cont = false;
  join = false;
  green1 = green;
  blue1 =blue ;
  blue2 =blue;
  blue3 = white;
  notifyListeners();

 }

 void contractBtn(){
  home = false;
  blog = false;
  cont = true;
  join = false;
  green1 = green;
  blue1 =blue ;
  blue2 =white;
  blue3 = blue;
  notifyListeners();
 }

 void block(){
  isVisibility =  false;
  home = false;
  blog = false;
  cont = false;
  join = false;
  green1 = green;
  blue1 =blue ;
  blue2 =blue;
  blue3 = blue;
  notifyListeners();
 }
 


}