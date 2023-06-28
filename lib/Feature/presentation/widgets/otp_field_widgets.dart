//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
// import '../../common/string/color_string.dart';
//
//
// class OtpField extends StatelessWidget {
//   const OtpField({Key? key, this.textEditingController, required this.onChange, required this.length}) : super(key: key);
//   final TextEditingController? textEditingController;
//   final dynamic onChange;
//   final int length;
//
//   @override
//   Widget build(BuildContext context) {
//     return PinCodeTextField(
//       appContext: context,
//       inputFormatters:  <TextInputFormatter>[
//         FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
//       ],
//       pastedTextStyle: const TextStyle(
//         color:Colors.black,
//         fontWeight: FontWeight.bold,
//       ),
//       length: length,
//       blinkWhenObscuring: true,
//       animationType: AnimationType.fade,
//
//       pinTheme: PinTheme(
//         shape: PinCodeFieldShape.box,
//         borderRadius: BorderRadius.circular(5),
//         fieldHeight: 50,
//         fieldWidth: 40,
//         activeFillColor: Colors.white,
//         inactiveFillColor: Colors.white,
//         selectedFillColor: Colors.white,
//         activeColor: AppColors.black,
//         selectedColor: AppColors.black,
//         inactiveColor: AppColors.black,
//       ),
//       cursorColor: Colors.black,
//       animationDuration: const Duration(milliseconds: 300),
//       enableActiveFill: true,
//       controller: textEditingController,
//       keyboardType: TextInputType.number,
//       onChanged: onChange,
//     );
//   }
// }