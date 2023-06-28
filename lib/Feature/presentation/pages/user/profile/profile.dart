
import 'package:flutter/material.dart';

import '../../../../common/appUtis.dart';
import '../../../../res/assets_res.dart';
import '../../../widgets/text_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var id =  getStorage.read(userId);
    var n =  getStorage.read(userName);
    var e =  getStorage.read(email);

    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 28.0,top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
           const Padding(
             padding: EdgeInsets.only(left: 28.0),
             child: CircleAvatar(
               backgroundImage:ExactAssetImage(AssetsRes.blog1),
               maxRadius: 90,
             ),
           ),
             Padding(
              padding: const EdgeInsets.only(
                  left: 28.0,bottom: 30),
              child: TextWidget(title: n.toString(),size: 20,),
            ),

            const TextWidget(title: "Profile Information",size: 18,weight: FontWeight.w600,color: Colors.blueAccent,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical: 5.0),
              child: Column(
                children:  [
                 Row(
                children:  [
                  const TextWidget(title: "Email: ",size: 16,weight: FontWeight.w300,),
                  TextWidget(title: e.toString(),size: 16,weight: FontWeight.w600,)
                ],
                 ),

                  Row(
                    children: const [
                      TextWidget(title: "Mobile: ",size: 16,weight: FontWeight.w300,),
                      TextWidget(title: "01517176972",size: 16,weight: FontWeight.w600,)
                    ],
                  ),
                  Row(
                    children: const [
                      TextWidget(title: "Gender: ",size: 16,weight: FontWeight.w300,),
                      TextWidget(title: "Male",size: 16,weight: FontWeight.w600,)
                    ],
                  ),
                  Row(
                    children: const [
                      TextWidget(title: "Area: ",size: 16,weight: FontWeight.w300,),
                      TextWidget(title: "DIU Smart City",size: 16,weight: FontWeight.w600,)
                    ],
                  ),

                  Row(
                    children: const [
                      TextWidget(title: "Post Code: ",size: 16,weight: FontWeight.w300,),
                      TextWidget(title: "1231",size: 16,weight: FontWeight.w600,)
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
