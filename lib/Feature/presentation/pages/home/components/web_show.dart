
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../common/string/color_string.dart';
import '../../../../res/assets_res.dart';
import '../../../manager/color_provider.dart';
import '../../../widgets/button_widget.dart';
import '../../../widgets/text_widget.dart';
import '../../blog/blog.dart';
import '../../contractUs/contractUs.dart';
import '../../joinUs/joinUs.dart';
import '_body.dart';

class WebShow extends StatefulWidget {
  const WebShow({Key? key}) : super(key: key);

  @override
  State<WebShow> createState() => _WebShowState();
}

class _WebShowState extends State<WebShow> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ColorProvider>(context, listen: false);
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: AppColors.salmom.withOpacity(0.6),
            height: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 30,
                ),
                ButtonWidget(
                  onTap: () {
                    setState(() {
                      provider.homeBtn();
                    });
                  },
                  widget: const TextWidget(
                    title: "Home",
                    color: Colors.white,
                  ),
                  boColor: provider.activeHome,
                ),
                const SizedBox(
                  width: 30,
                ),
                ButtonWidget(
                  onTap: () {
                    setState(() {
                      provider.blogBtn();
                    });
                  },
                  widget: const TextWidget(
                    title: "Blog",
                    color: Colors.white,
                  ),
                  boColor: provider.activeBlog,
                ),
                const SizedBox(
                  width: 30,
                ),
                ButtonWidget(
                  onTap: () {
                    setState(() {
                      provider.contractBtn();
                    });
                  },
                  widget: const TextWidget(
                    title: "Contract Us",
                    color: Colors.white,
                  ),
                  boColor: provider.activeContract,
                ),
                const SizedBox(
                  width: 30,
                ),
                ButtonWidget(
                  onTap: () {
                    setState(() {
                      provider.joinBtn();
                    });
                  },
                  widget: const TextWidget(
                    title: "Join Us",
                    color: Colors.white,
                  ),
                  bgColor: Colors.green,
                  boColor: provider.activeJoin,
                  icon: Icons.directions_bike_outlined,
                ),
              ],
            ),
          ),

           Expanded(
             child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children:  [
                  provider.isCont ?   Column(
                    children: [
                      SizedBox(
                        width: w,
                        height: 502,child: Image.asset(AssetsRes.blog1,fit: BoxFit.fill,),
                      ),
                    ],
                  ) : const SizedBox(),
                  provider.isHome ?   SizedBox(height: h,width: w, child: const HomeBody()) : const SizedBox(),
                  provider.isHome ?  Container(height: 20, color: Colors.white,) : const SizedBox(),
                  provider.isBlog ?   SizedBox(height: h,width: w, child: const Blog(),) : const SizedBox(),
                  provider.isHome ?   SizedBox(height: h,width: w, child: const Blog(),) : const SizedBox(),
                  provider.isHome ?   const ContractUs() : const SizedBox(),
                  provider.isCont ?   const ContractUs() : const SizedBox(),
                  provider.isJoin ? const JoinUs() : const SizedBox(),

                ],
              )),
           ),

        ],
      ),
    );
  }
}
