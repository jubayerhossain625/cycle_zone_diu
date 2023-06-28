
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../common/responsive.dart';
import '../../../../common/string/color_string.dart';
import '../../../manager/userActivity.dart';
import '../../../widgets/button_widget.dart';
import '../../../widgets/text_widget.dart';
import '../history/history_page.dart';
import '../notification/notification.dart';
import '../profile/profile.dart';
import 'dashbordPage.dart';


 class UserHome extends StatefulWidget {
   const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
   @override
   Widget build(BuildContext context) {
     var data = Provider.of<UserActivity>(context, listen: false);
     var h = MediaQuery.of(context).size.height;
     var w = MediaQuery.of(context).size.width;
     return  SafeArea(
         child:Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
         Responsive.isDesktop(context) ? Container(
             height: 50,color: AppColors.deepBlue,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 ButtonWidget(  onTap: (){setState(() {data.getRides();});}    ,icon: Icons.directions_bike,iColor: data.activeRide,
                   widget:  TextWidget(title: "Ride",color: data.activeRide,size: 15,weight: FontWeight.bold,
                   ),),
                 const SizedBox(width: 30,),
                 ButtonWidget( onTap: (){setState(() {data.getHistory();});}  ,icon: Icons.history,iColor: data.activeHistory,
                   widget:  TextWidget(title: "History",color: data.activeHistory,size: 15,
                   ),),
                 const SizedBox(width: 30,),
                 ButtonWidget( onTap: (){setState(() {data.getNotification();});}  ,icon: Icons.notifications,iColor: data.activeNotifi,
                   widget:  TextWidget(title: "Notification",color: data.activeNotifi,size: 15,
                   ),),
                 const SizedBox(width: 30,),
                 ButtonWidget( onTap: (){setState(() {data.getProfile();});}  ,icon: Icons.account_circle_outlined,iColor: data.activeProfile,
                   widget:  TextWidget(title: "Profile",color: data.activeProfile,size: 15,
                   ),),
               ],
             ),
           ) :SizedBox(),

        Responsive.isTab(context) ?  Container(
               height: 50,color: AppColors.deepBlue,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   ButtonWidget(  onTap: (){setState(() {data.getRides();});}    ,icon: Icons.directions_bike,iColor: data.activeRide,
                     widget:  TextWidget(title: "Ride",color: data.activeRide,size: 15,weight: FontWeight.bold,
                     ),),
                   const SizedBox(width: 30,),
                   ButtonWidget( onTap: (){setState(() {data.getHistory();});}  ,icon: Icons.history,iColor: data.activeHistory,
                     widget:  TextWidget(title: "History",color: data.activeHistory,size: 15,
                     ),),
                   const SizedBox(width: 30,),
                   ButtonWidget( onTap: (){setState(() {data.getNotification();});}  ,icon: Icons.notifications,iColor: data.activeNotifi,
                     widget:  TextWidget(title: "Notification",color: data.activeNotifi,size: 15,
                     ),),
                   const SizedBox(width: 30,),
                   ButtonWidget( onTap: (){setState(() {data.getProfile();});}  ,icon: Icons.account_circle_outlined,iColor: data.activeProfile,
                     widget:  TextWidget(title: "Profile",color: data.activeProfile,size: 15,
                     ),),
                 ],
               ),
             ): const SizedBox() ,
               Expanded(child: SingleChildScrollView(
                 scrollDirection: Axis.vertical,
                 child: Column(
                  children:  [
                  data.isProfile ?  SizedBox(height: h,width: w, child: const ProfilePage()) : const SizedBox(),
                    data.isHistory ?  SizedBox(height:h,width:w,child: const HistoryTable()) : const SizedBox(),
                    data.isNotifi ?  SizedBox(height:h,width:w,child: const NotificationPage()) : const SizedBox(),
                    data.isRide ?  SizedBox(height:h,width:w,child: const DashBoard()) : const SizedBox(),

                  ],
              ),
               )),

             Responsive.isMobile(context) ? Container(
               color: Colors.green,
               height: 50,
               width: MediaQuery.of(context).size.width,
               child: Row(
                 children: [
                   KB(  onTap: (){setState(() {data.getRides();});}    ,icon: Icons.directions_bike,iColor: data.activeRide,bgColor: Colors.green,boColor:Colors.green ,
                     widget:  TextWidget(title: "Ride",color: data.activeRide,size: 10,weight: FontWeight.bold,
                     ),),
                   const Spacer(),
                   KB( onTap: (){setState(() {data.getHistory();});}  ,icon: Icons.history,iColor: data.activeHistory,bgColor: Colors.green,
                     widget:  TextWidget(title: "History",color: data.activeHistory,size: 10,
                     ),),
                   const Spacer(),
                   KB( onTap: (){setState(() {data.getNotification();});}  ,icon: Icons.notifications,iColor: data.activeNotifi,bgColor: Colors.green,
                     widget:  TextWidget(title: "Notification",color: data.activeNotifi,size: 10,
                     ),),
                const Spacer(),
                   KB( onTap: (){setState(() {data.getProfile();});}  ,icon: Icons.account_circle_outlined,iColor: data.activeProfile,bgColor: Colors.green,
                     widget:  TextWidget(title: "Profile",color: data.activeProfile,size: 10,
                     ),),
                 ],
               ),
             ) : const SizedBox(),
           ],
         )
     );
   }
}
