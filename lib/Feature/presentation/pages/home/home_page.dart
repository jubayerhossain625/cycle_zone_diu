
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../common/responsive.dart';
import '../../manager/color_provider.dart';
import 'components/mobile.dart';
import 'components/web_show.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {




  @override
  Widget build(BuildContext context) {
    var data = Provider.of<ColorProvider>(context, listen: false);
    return Scaffold(
      body: Visibility(
        visible: data.isVisi,
        child: Column(
          children: [
            Responsive.isDesktop(context) ? const WebShow() : const SizedBox(),
            Responsive.isMobile(context) ?  const Mobile(): const SizedBox(),
          ],
        ),
      ),
     // bottomNavigationBar: Responsive.isMobile(context) ? CurvedNavigationBar(
     //    backgroundColor: AppColors.salmom,
     //    color: AppColors.white,
     //    items: const <Widget> [
     //      Icon(Icons.home, size: 30),
     //      Icon(Icons.card_travel_outlined, size: 30),
     //      Icon(Icons.account_circle_outlined, size: 30),
     //    ],
     //
     //    onTap: (index) {
     //      //Handle button tap
     //    },
     //  ) : const SizedBox(),
    );
  }
}
