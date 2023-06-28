
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../../common/string/app_string.dart';
import '../../../../common/string/color_string.dart';
import '../../../../res/assets_res.dart';
import '../../../widgets/text_widget.dart';


class HomeBody extends StatelessWidget  {
  const HomeBody({Key? key}) : super(key: key);

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
            SizedBox(
              height: 200,
              child: Row(
                children: [
                  const Spacer(flex: 2,),
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Welcome To DIU\n     Cycle Zone',
                        textStyle: const TextStyle(
                          fontSize: 50,
                          color: AppColors.green,
                        ),
                        speed: const Duration(milliseconds: 50),
                      ),
                    ],
                  ),
                  const Spacer(flex: 6,),
                ],
              ),
            ),
            const Spacer(flex: 2,),
            Row(
             mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Spacer(flex: 3,),
                
                const SizedBox(
                  height: 120,width: 400,
                  child: TextLtdWidget(
                    title: AppString.hAbout,color: AppColors.black,line: 5,size: 17,weight: FontWeight.w600,
                  ),
                ),
                const Spacer(flex: 2,),
                SizedBox(
                  height: 120,
                  child: Image.asset(AssetsRes.diuLogo),
                ),
                Container(
                  margin: const EdgeInsets.all(3),
                  height: 120,
                  decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),),

                const TextLtdWidget(
                  title: "Daffodil International \nUniversity",color: AppColors.black,size: 40,line: 2,weight: FontWeight.w400,
                ),

                const Spacer(flex: 1,),
              ],
            ),

            const Spacer(flex: 3,),
          ],
        ),




      ],
    );
  }
}
