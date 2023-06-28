
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../common/string/color_string.dart';
import '../../../common/string/route_string.dart';
import '../../../res/assets_res.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double>  _animation;

  @override
  void initState() {
    super.initState();
    _controller =AnimationController(duration: const Duration(seconds: 3),vsync:this )
      ..repeat(reverse: true);

    _animation = Tween<double>(begin: 1, end: 0).animate(_controller);
    _loadData();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future _loadData() async {
    await  Future.delayed( const Duration(seconds:5));
    Navigator.pushReplacementNamed(context,RouteString.home);
  }

  @override
  Widget build(BuildContext context) {

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
            child: Lottie.asset(AssetsRes.entryCycle)
            )
        ),

         Positioned(
        bottom: 200.0,
          child:    AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TypewriterAnimatedText(
                'Cycle Zone',
                textStyle: const TextStyle(
                  fontSize: 40,
                  color: AppColors.salmom,
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