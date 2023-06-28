
import 'package:flutter/material.dart';

import '../../common/responsive.dart';
import '../../common/string/color_string.dart';

class NavigatorPopIcon extends StatelessWidget {
  NavigatorPopIcon({Key? key, this.color}) : super(key: key);
  Color? color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
       Responsive.isMobile(context) ? Icons.arrow_back_ios : Icons.arrow_back,
        size: Responsive.isMobile(context) ? 30 : 40 ,
        color: color ?? AppColors.black,
      ),
    );
  }
}