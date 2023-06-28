
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../common/responsive.dart';
import '../../../../common/string/color_string.dart';
import '../../../../res/assets_res.dart';
import '../../../manager/color_provider.dart';
import '../../../widgets/button_widget.dart';
import '../../../widgets/text_widget.dart';
import '../../blog/blog.dart';
import '../../contractUs/contractUs.dart';
import '../../joinUs/joinUs.dart';
import '_body.dart';
import 'mobile_home.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<ColorProvider>(context, listen: false);
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SizedBox(height: h,width: w,
      child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children:  [
                  data.isHome ?   SizedBox( height:h, child:  const MobileHome()) : const SizedBox(),
                 data.isBlog ?  const Blog() : const SizedBox(),
                  data.isBlog ?  const ContractUs() : const SizedBox(),
                  data.isHome ?  const Blog() : const SizedBox(),
                  data.isCont ?   Column(
                    children: [

                      SizedBox(
                        height: 502,child: Image.asset(AssetsRes.blog1,fit: BoxFit.fill,),
                      ),
                    ],
                  ) : const SizedBox(),
                   data.isCont ?  const ContractUs() : const SizedBox(),
                  data.isJoin ?  Visibility(visible: data.isVisi,child: const JoinUs(),) : const SizedBox(),

                ],
              ),
            ),
          ),


       Container(
         height: 50,
            color: AppColors.amber,
         width: w,
            child: Row(
              children: [
                KB(  onTap: (){setState(() {data.homeBtn();});}    ,icon: Icons.home,
                   iColor: data.activeHome,
                  bgColor: AppColors.amber,
                  widget:   TextWidget(title: "home",
                     color: data.activeHome,
                    size: 10,weight: FontWeight.bold,
                  ),),
                const Spacer(),
                KB( onTap: (){setState(() {data.blogBtn();});}  ,icon: Icons.backup_table_sharp,
                   iColor: data.activeBlog,
                  bgColor: AppColors.amber,
                  widget:  TextWidget(title: "Blog",
                    color: data.activeBlog,
                    size: 10,
                  ),),
                const Spacer(),
                KB( onTap: (){setState(() {data.contractBtn();});}  ,icon: Icons.contact_phone_rounded,
                 iColor: data.activeContract,
                  bgColor: AppColors.amber,
                  widget:  TextWidget(title: "Contract Us",
                     color: data.activeContract,
                    size: 10,
                  ),),
                const Spacer(),
                KB( onTap: (){setState(() {data.joinBtn();});}  ,icon: Icons.directions_bike,
                 iColor: data.activeJoin,
                  bgColor: AppColors.amber,
                  widget:  TextWidget(title: "join us",
                  color: data.activeJoin,
                    size: 10,
                  ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
