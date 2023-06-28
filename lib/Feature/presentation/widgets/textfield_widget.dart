import 'package:flutter/material.dart';

import '../../common/string/color_string.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {Key? key,
        required this.controller,
        this.hint,
        this.icon,
        required this.inputType,
        this.line,
        this.length,
        this.onChange,
        this.borderColor})
      : super(key: key);
  final TextEditingController controller;
  final String? hint;
  final IconData? icon;
  final TextInputType inputType;
  final ValueChanged<String>? onChange;
  final int? line;
  final int? length;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: icon != null
          ? const EdgeInsets.only(left: 6.0)
          : const EdgeInsets.only(left: 6.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(width: 1.0, color: AppColors.black)),
      height: 45.0,
      width: double.infinity,
      child: Row(
        children: [
          icon != null
              ? Icon(
            icon,
            color: AppColors.black,
          )
              : SizedBox(),
          Expanded(
            child: TextField(
              maxLength: length,
              onChanged: onChange,
              keyboardType: inputType,
              scrollPhysics: const BouncingScrollPhysics(),
              controller: controller,
              decoration: InputDecoration(
                  counterText: '',
                  contentPadding: const EdgeInsets.only(
                      left: 4.0, right: 8.0, top: 14.0, bottom: 12.0),
                  isDense: true,
                  border: InputBorder.none,
                  hoverColor: AppColors.black,
                  focusColor: AppColors.black,
                  disabledBorder: InputBorder.none,
                  hintText: hint),
            ),
          ),
        ],
      ),
    );
  }
}


class TextFieldLTDWidget extends StatelessWidget {
  const TextFieldLTDWidget(
      {Key? key,
        required this.controller,
        this.hint,
        this.icon,
        required this.inputType,
        this.line,
        this.length,
        this.onChange,
        this.borderColor})
      : super(key: key);
  final TextEditingController controller;
  final String? hint;
  final IconData? icon;
  final TextInputType inputType;
  final ValueChanged<String>? onChange;
  final int? line;
  final int? length;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: icon != null
          ? const EdgeInsets.only(left: 6.0)
          : const EdgeInsets.only(left: 6.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(width: 1.0, color: AppColors.black)),
      height: 45.0,
      width: double.infinity,
      child: Row(
        children: [
          icon != null
              ? Icon(
            icon,
            color: AppColors.black,
          )
              : const SizedBox(),
          Expanded(
            child: TextField(
              maxLength: length,
              onChanged: onChange,
              keyboardType: inputType,
              scrollPhysics: const BouncingScrollPhysics(),
              controller: controller,
              maxLines: line,
              decoration: InputDecoration(
                counterText: '',
                contentPadding: const EdgeInsets.only(
                    left: 4.0, right: 3.0, top: 3.0, bottom: 3.0),
                isDense: true,
                border: InputBorder.none,
                hoverColor: AppColors.black,
                focusColor: AppColors.black,
                disabledBorder: InputBorder.none,
                hintText: hint,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

