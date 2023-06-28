
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../common/string/app_string.dart';
import '../../../../common/string/color_string.dart';
import '../../../../res/assets_res.dart';
import '../../../widgets/text_widget.dart';


class MobileHome extends StatelessWidget  {
  const MobileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.topCenter,
      children: [

        Opacity(
            opacity: 0.4,
            child:Image.asset(AssetsRes.diu,fit: BoxFit.fill, height: 1080,width: 1920,)
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50,),
            SizedBox(
              height: 100,
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Welcome To DIU\n    Cycle Zone',
                    textStyle: const TextStyle(
                      fontSize: 25,
                      color: AppColors.green,
                    ),
                    speed: const Duration(milliseconds: 50),
                  ),
                ],
              ),
            ),

            Lottie.asset(AssetsRes.cycle010),

            // const Spacer(flex: 2,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                // const Spacer(flex: 3,),

                const SizedBox(
                  height: 120,width: 300,
                  child: TextLtdWidget(
                    title: AppString.hAbout,color: AppColors.black,line: 5,size: 12,weight: FontWeight.w600,
                  ),
                ),
                // const Spacer(flex: 2,),
                SizedBox(
                  height: 120,
                  child: Image.asset(AssetsRes.diuLogo),
                ),

                const TextLtdWidget(
                  title: "Daffodil International University",color: AppColors.black,size: 22,line: 2,weight: FontWeight.w400,
                ),

                // const Spacer(flex: 1,),
              ],
            ),

            // const Spacer(flex: 3,),
          ],
        ),




      ],
    );
  }
}
