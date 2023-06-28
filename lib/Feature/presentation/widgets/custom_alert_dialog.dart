
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:walk_mate/Feature/presentation/widgets/text_widget.dart';

import '../../common/string/app_string.dart';
import 'button_widget.dart';

class CustomAlertDialog extends StatefulWidget {
  const CustomAlertDialog({
    Key? key,
    required this.title,
    required this.description,
    required this.onTap,
    required this.lottiePath,
  }) : super(key: key);

  final String title, description;
  final GestureTapCallback onTap;
  final String lottiePath;

  @override
  _CustomAlertDialogState createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Dialog(
      elevation: 0,
      backgroundColor: const Color(0xffffffff),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                height: 120,
                width: 250,
                child: Lottie.asset(
                  widget.lottiePath,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 8),
            child: TextWidget(
              title: widget.title,
              weight: FontWeight.bold,
              size: 18,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w * 0.1, top: 8, right: w * 0.1),
            child: TextLtdWidget(
              title: widget.description,
              line: 3,
            ),
          ),
          Container(
            margin:
            const EdgeInsets.only(top: 20, bottom: 30, left: 20, right: 20),
            width: w * .5,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWidget(
                  onTap: widget.onTap,
                  widget: const TextWidget(title: AppString.yes),
                ),
                const Spacer(flex: 2),
                ButtonWidget(
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  widget: const TextWidget(title: AppString.no),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}