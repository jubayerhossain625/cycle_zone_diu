import 'package:flutter/material.dart';
import 'custom_alert_dialog.dart';

appAlertDialog(BuildContext context, String title, String description,
    String lottiePath, GestureTapCallback onTap) {
  showDialog(
    barrierColor: Colors.black26,
    context: context,
    builder: (context) {
      return CustomAlertDialog(
        onTap: onTap,
        title: title,
        description: description,
        lottiePath: lottiePath,
      );
    },
  );
}