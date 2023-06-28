
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../../../common/string/color_string.dart';
import '../../../common/string/route_string.dart';
import '../../../res/assets_res.dart';
import '../../manager/color_provider.dart';


class EntryHome extends StatefulWidget {
  const EntryHome({Key? key}) : super(key: key);

  @override
  State<EntryHome> createState() => _EntryHomeState();
}

class _EntryHomeState extends State<EntryHome> with TickerProviderStateMixin {
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
    await  Future.delayed( const Duration(seconds:3));
    setState(() {
      //Navigator.pop(context);
      Navigator.pushReplacementNamed(context,RouteString.userHome);
    });

  }

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<ColorProvider>(context, listen: false);
    data.block();
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
            child: Lottie.asset(AssetsRes.cycle08)
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