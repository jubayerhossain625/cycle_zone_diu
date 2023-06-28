

import 'package:flutter/material.dart';

import '../../../../common/string/color_string.dart';
import '../../../widgets/button_widget.dart';
import '../../../widgets/text_widget.dart';
import '../../../widgets/textfield_widget.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.deepPurple,
      child: Center(
        child: Column(
          children: [
            const Spacer(),
            Container(
              height: 330,width: 350,
              padding: const EdgeInsets.only(top: 10,left: 20,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: AppColors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: TextWidget(title: "Phone No",color: AppColors.deepBlue,size: 14,),
                  ),
                 SizedBox( width: 250,
                     child: TextFieldLTDWidget(controller: _phone, inputType: TextInputType.text,hint: "gmail",icon: Icons.call,)),
                const SizedBox(height: 20.0,),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: TextWidget(title: "Password",color: AppColors.deepBlue,size: 14,),
                  ),
                  SizedBox( width: 250,
                      child: TextFieldLTDWidget(controller: _pass, inputType: TextInputType.phone,hint: "*****",icon: Icons.lock,)),
                  const SizedBox(height: 10.0,),
                  const SizedBox(height: 10.0,),
                  ButtonWidget(
                    width: 150,height:50,bgColor: AppColors.salmom,radius: 15.0,
                    onTap: (){},
                    widget: const TextWidget(title: "Login",color:AppColors.white,size: 22,weight: FontWeight.w600,),),
                  const Spacer(),
                  const Spacer(flex: 2,),

                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
