
import 'package:flutter/material.dart';
import 'package:walk_mate/Feature/presentation/widgets/text_widget.dart';

import '../../common/string/color_string.dart';

// normal button
class ButtonWidget extends StatelessWidget {
   ButtonWidget(
      {Key? key,
        this.bgColor,
        this.widget,
        this.height,
        this.width,
        this.radius,
        required this.onTap,
        this.boColor, this.icon, this.iColor, this.iSize})
      : super(key: key);
  final Color? bgColor;
  final Widget? widget;
  final double? height;
  final double? width;
  final double? radius;
  final IconData? icon;
  late  Color? boColor;
  final Color? iColor;
  final double? iSize;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
     boColor ??= bgColor;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: boColor ?? AppColors.teal
        ),
        borderRadius: BorderRadius.circular(radius ?? 6)
      ),
      child: MaterialButton(
          color: bgColor ?? AppColors.teal,
          height: height ?? 35.0,
          minWidth: width ?? 85.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius ?? 5.0),),

          onPressed: onTap,
          child: Row(
            children: [
              icon != null ? Icon(icon ?? Icons.camera,color: iColor ?? Colors.white,size: iSize ?? 27,) : const SizedBox(),
              const SizedBox(width: 8,),
              widget ?? const TextWidget(title: '',)
            ],
          )
      ),
    );
  }
}

// KB

class KB extends StatelessWidget {
  KB(
      {Key? key,
        this.bgColor,
        this.widget,
        this.height,
        this.width,
        this.radius,
        required this.onTap,
        this.boColor, this.icon, this.iColor, this.iSize})
      : super(key: key);
  final Color? bgColor;
  final Widget? widget;
  final double? height;
  final double? width;
  final double? radius;
  final IconData? icon;
  late  Color? boColor;
  final Color? iColor;
  final double? iSize;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    boColor ??= bgColor;
    return MaterialButton(
      elevation: 0,
        color: bgColor ?? AppColors.teal,
        height: height ?? 35.0,
        minWidth: width ?? 85.0,

        onPressed: onTap,
        child: Column(
          children: [
            const SizedBox(height: 3,),
            icon != null ? Icon(icon ?? Icons.camera,color: iColor ?? Colors.white,size: iSize ?? 25,) : const SizedBox(),
            const SizedBox(height: 2,),
            widget ?? const TextWidget(title: '',)
          ],
        )
    );
  }
}




// LTD button

class ButtonLTDWidget extends StatelessWidget {
  const ButtonLTDWidget(
      {Key? key,
        this.bgColor,
        this.widget,
        this.height,
        this.width,
        this.radius,
        required this.onTap,
        this.focusColor})
      : super(key: key);
  final Color? bgColor;
  final Color? focusColor;
  final Widget? widget;
  final double? height;
  final double? width;
  final double? radius;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 0.0,
        hoverColor: focusColor,
        highlightColor: focusColor,
        color: bgColor ?? AppColors.deepBlue,
        height: height ?? 35.0,
        minWidth: width ?? 00.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 4.0),
        ),
        onPressed: onTap,
        child: widget ?? const TextWidget(title: 'Title'));
  }
}

//Circle Button
class CircleBtnWidget extends StatelessWidget {
  const CircleBtnWidget(
      {Key? key,
        this.bgColor,
        this.icon,
        this.iconSize,
        this.radius,
        required this.onTap,
        this.iconColor})
      : super(key: key);
  final Color? bgColor;
  final Color? iconColor;
  final IconData? icon;

  final double? iconSize;
  final double? radius;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: radius ?? 30.0,
      color: bgColor ?? AppColors.deepBlue,
      onPressed: onTap,
      icon: Icon(
        icon ?? Icons.arrow_back,
        color: iconColor ?? Colors.white,
        size: iconSize ?? 24.0,
      ),
    );
  }
}

class ButtonRightBorderWidget extends StatelessWidget {
  const ButtonRightBorderWidget(
      {Key? key,
        this.bgColor,
        this.widget,
        this.height,
        this.width,
        this.radius,
        required this.onTap})
      : super(key: key);
  final Color? bgColor;
  final Widget? widget;
  final double? height;
  final double? width;
  final double? radius;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: bgColor ?? AppColors.deepBlue,
        height: height ?? 35.0,
        minWidth: width ?? 85.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25), bottomRight: Radius.circular(25)),
        ),
        onPressed: onTap,
        child: widget ?? const TextWidget(title: 'Title'));
  }
}

class ButtonLeftBorderWidget extends StatelessWidget {
  const ButtonLeftBorderWidget(
      {Key? key,
        this.bgColor,
        this.widget,
        this.height,
        this.width,
        this.radius,
        required this.onTap})
      : super(key: key);
  final Color? bgColor;
  final Widget? widget;
  final double? height;
  final double? width;
  final double? radius;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: bgColor ?? AppColors.deepBlue,
        height: height ?? 35.0,
        minWidth: width ?? 85.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), bottomLeft: Radius.circular(25)),
        ),
        onPressed: onTap,
        child: widget ?? const TextWidget(title: 'Title'));
  }
}