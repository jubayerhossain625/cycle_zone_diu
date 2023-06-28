
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:walk_mate/Feature/presentation/widgets/text_widget.dart';

import '../../../../common/string/color_string.dart';
import '../../../../common/string/route_string.dart';
import '../../../../res/assets_res.dart';
import '../../../manager/riding.dart';


class ThanksPage extends StatefulWidget {
    ThanksPage({Key? key, required this.cost}) : super(key: key);
   final String cost;

  @override
  State<ThanksPage> createState() => _ThanksPageState();
}

class _ThanksPageState extends State<ThanksPage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double>  _animation;

  @override
  void initState() {
    super.initState();
    _controller =AnimationController(duration: const Duration(seconds: 2),vsync:this )
      ..repeat(reverse: true);

    _animation = Tween<double>(begin: 1, end: 0).animate(_controller);
    _loadData();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future _loadData() async {
    await  Future.delayed( const Duration(seconds:2));
   setState(() {
     Navigator.pushReplacementNamed(context,RouteString.userHome);
   });
  }

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<Riding>(context, listen: false);
    return Scaffold(
        body: _splashLogo()
    );
  }

  //Splash screen logo Widget
  Widget _splashLogo(){
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [

        Center(
            child: SizedBox(
                child: Lottie.asset(AssetsRes.cycle03)
            )
        ),
          Positioned(
          top: 100,
          child: TextWidget(
            title: "Total Cost" +" : "+ widget.cost.toString()+' TK',
            size: 30,weight: FontWeight.w700,
            color: AppColors.salmom,
          ),
        ),
        Positioned(
          bottom: 100.0,
          child:    AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TypewriterAnimatedText(
                'Thanks For Riding',
                textStyle: const TextStyle(
                  fontSize: 40,
                  color: Colors.green,
                ),
                speed: const Duration(milliseconds: 50),
              ),
            ],
          ),
        ),
      ],
    );
  }

}