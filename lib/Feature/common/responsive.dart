
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({Key? key,required this.mobile,required this.tab, required this.desktop, }) : super(key: key);
  final Widget mobile;
  final Widget tab;
  final Widget desktop;

  static bool isMobile(BuildContext context)=>MediaQuery.of(context).size.width<650;
  static bool isTab(BuildContext context)=>MediaQuery.of(context).size.width>=650  && MediaQuery.of(context).size.width<1100;
  static bool isDesktop(BuildContext context)=>MediaQuery.of(context).size.width>=1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth<650) {
        return mobile;
      }
      else if(constraints.maxWidth>=650  && constraints.maxWidth<1100) {
        return tab;
      }

      else{
        return desktop;
      }
    });
  }
}