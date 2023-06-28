import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:walk_mate/Feature/common/string/route_string.dart';
import '../../../common/appUtis.dart';
import '../../../common/responsive.dart';
import '../../../common/string/color_string.dart';
import '../../../res/assets_res.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/text_widget.dart';
import 'authCard.dart';

class JoinUs extends StatefulWidget {
  const JoinUs({Key? key}) : super(key: key);

  @override
  State<JoinUs> createState() => _JoinUsState();
}

class _JoinUsState extends State<JoinUs> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TypewriterAnimatedText(
              'DIU Cycle Zone',
              textStyle: const TextStyle(
                fontSize: 40,
                color: AppColors.salmom,
              ),
              speed: const Duration(milliseconds: 50),
            ),
          ],
        ),
        SizedBox(child: Lottie.asset(AssetsRes.cycle02)),
        Responsive.isDesktop(context)
            ? SizedBox(
                width: 300,
                child: ButtonWidget(
                  onTap:signIn,
                  bgColor: AppColors.teal,
                  icon: Icons.key,
                  iColor: Colors.amber,
                  widget: const TextWidget(
                    title: "Continue As Google Account At DIU",
                    color: AppColors.white,
                    size: 15,
                  ),
                ),
              )
            : SizedBox(
                width: 300,
                height: 50,
                child: ButtonWidget(
                  onTap: signIn,
                  bgColor: AppColors.teal,
                  icon: Icons.key,
                  iColor: Colors.amber,
                  widget: const TextWidget(
                    title: "Continue By Google Account",
                    color: AppColors.white,
                    size: 15,
                  ),
                ),
              ),
      ],
    );
  }

  signIn(){


    setState(() {
      _showDialog(context);
    });
    // try {
    //   final res = await dio.get('https://cycle-server-nine.vercel.app/dash/reward/1');
    //   if(res !=null){
    //     print(res.data[0]['totalReward']);
    //
    //
    //     // Navigator.pushReplacementNamed(context, RouteString.userHome);
    //   }else{
    //     print("error");
    //   }
    //
    // } catch (e) {
    //   print(e.toString());
    // }
  }


  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const TextWidget(title: "Choose an account",size: 22,weight: FontWeight.w400,),
          content: SizedBox(
            height: 300,
            child: Column(
              children: [
                Row(children: const [
                  TextWidget(title: "to continue to",size: 16,weight: FontWeight.w400,),
                  TextWidget(title: "DIU CYCLE ZONE",size: 16,weight: FontWeight.w400,color: Colors.blue,),
                ],),
                const SizedBox(height: 30,),
                const AuthCard()

              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }







}
