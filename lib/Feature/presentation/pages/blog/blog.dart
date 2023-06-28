
import 'package:flutter/material.dart';

import '../../../common/responsive.dart';
import '../../../common/string/color_string.dart';
import '../../../res/assets_res.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/text_widget.dart';


class Blog extends StatelessWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Responsive.isDesktop(context) ? Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Opacity(
                    opacity: 0.9,
                    child: Image.asset(AssetsRes.blog1,fit: BoxFit.fitHeight,height: MediaQuery.of(context).size.height*0.98,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:   [
                      // const Spacer(flex: 3,),
                      const TextWidget(
                        title: "Join a ride",size: 22,weight: FontWeight.w700,color: AppColors.black,
                      ),
                      // const Spacer(flex: 2,),
                      const TextWidget(
                        title: "Join and take part in solo rides.",size: 16,weight: FontWeight.w400,color: AppColors.black,
                      ),
                      // const Spacer(flex: 1,),
                      const TextWidget(
                        title: "Benefits",size: 18,weight: FontWeight.w600,color: AppColors.black,
                      ),

                      const SizedBox(height: 10,),
                      Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.check,color: Colors.black,),
                          TextWidget(
                            title: "Increase your physical activity ",size: 16,weight: FontWeight.w400,color: AppColors.black,
                          ),
                        ],
                      ),
                      const SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.check,color: Colors.black,),
                          TextWidget(
                            title: "Join a social network",size: 16,weight: FontWeight.w400,color: AppColors.black,
                          ),
                        ],
                      ),
                      const SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.check,color: Colors.black,),
                          TextWidget(
                            title: "Gain confidence and competence",size: 16,weight: FontWeight.w400,color: AppColors.black,
                          ),
                        ],
                      ),
                      const SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.check,color: Colors.black,),
                          TextWidget(
                            title: "Free insurance cover for your ride",size: 16,weight: FontWeight.w400,color: AppColors.black,
                          ),
                        ],
                      ),
                      const SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.check,color: Colors.black,),
                          TextWidget(
                            title: "Earn rewards.",size: 16,weight: FontWeight.w400,color: AppColors.black,
                          ),
                        ],
                      ),
                      //
                      // const Spacer(flex: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:  [
                          ButtonWidget(
                            onTap: (){},
                            bgColor: AppColors.green,
                            radius: 0.0,
                            widget: const TextWidget(title: " Join Today ",),
                          ),
                          const SizedBox(width: 50,),
                          ButtonWidget(
                            onTap: (){},
                            bgColor: Colors.teal.withOpacity(0.6),
                            boColor: Colors.black,
                            radius: 0.0,
                            widget: const TextWidget(title: "Find a Ride",color: Colors.white,),
                          ),

                        ],
                      ),
                      //
                      // const Spacer(flex: 20,),
                    ],
                  ),
                )

              ],
            )),


            Expanded(child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Opacity(
                  opacity: 0.9,
                  child: Image.asset(AssetsRes.blog2,fit: BoxFit.fitHeight,height: MediaQuery.of(context).size.height*0.98,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:   [
                      // const Spacer(flex: 3,),
                      const TextWidget(
                        title: "Join a ride",size: 22,weight: FontWeight.w700,color: AppColors.white,
                      ),
                      // const Spacer(flex: 2,),
                      const TextWidget(
                        title: "Join and take part in solo rides.",size: 16,weight: FontWeight.w400,color: AppColors.white,
                      ),
                      // const Spacer(flex: 1,),
                      const TextWidget(
                        title: "Benefits",size: 18,weight: FontWeight.w600,color: AppColors.white,
                      ),

                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.check,color: Colors.white,),
                          TextWidget(
                            title: "Increase your physical activity ",size: 16,weight: FontWeight.w400,color: AppColors.white,
                          ),
                        ],
                      ),
                      const SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.check,color: Colors.white,),
                          TextWidget(
                            title: "Join a social network",size: 16,weight: FontWeight.w400,color: AppColors.white,
                          ),
                        ],
                      ),
                      const SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.check,color: Colors.white,),
                          TextWidget(
                            title: "Gain confidence and competence",size: 16,weight: FontWeight.w400,color: AppColors.white,
                          ),
                        ],
                      ),
                      const SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.check,color: Colors.white,),
                          TextWidget(
                            title: "Free insurance cover for your ride",size: 16,weight: FontWeight.w400,color: AppColors.white,
                          ),
                        ],
                      ),
                      const SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.check,color: Colors.white,),
                          TextWidget(
                            title: "Earn rewards.",size: 16,weight: FontWeight.w400,color: AppColors.white,
                          ),
                        ],
                      ),

                      // const Spacer(flex: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:  [
                          ButtonWidget(
                            onTap: (){},
                          bgColor: AppColors.green,
                            radius: 0.0,
                            widget: const TextWidget(title: "Register Your Interest",),
                          ),
                          const SizedBox(width: 50,),
                          ButtonWidget(
                            onTap: (){},
                            bgColor: Colors.transparent,
                            boColor: AppColors.white,
                            radius: 0.0,
                            widget: const TextWidget(title: "Learn More",color: Colors.white,),
                          ),

                        ],
                      ),

                      // const Spacer(flex: 20,),
                    ],
                  ),
                )

              ],
            )),
          ],
        ) : const SizedBox(),


    Responsive.isMobile(context) ?  SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: MediaQuery.of(context).size.height*0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30,),
                Expanded(child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Opacity(
                      opacity: 0.9,
                      child: Image.asset(AssetsRes.blog1,fit: BoxFit.fitHeight,height: MediaQuery.of(context).size.height*0.98,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:   [
                          const Spacer(flex: 3,),
                          const TextWidget(
                            title: "Join a ride",size: 22,weight: FontWeight.w700,color: AppColors.black,
                          ),
                          const Spacer(flex: 2,),
                          const TextWidget(
                            title: "Join and take part in solo rides.",size: 16,weight: FontWeight.w400,color: AppColors.black,
                          ),
                          const Spacer(flex: 1,),
                          const TextWidget(
                            title: "Benefits",size: 18,weight: FontWeight.w600,color: AppColors.black,
                          ),

                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.check,color: Colors.black,),
                              TextWidget(
                                title: "Increase your physical activity ",size: 16,weight: FontWeight.w400,color: AppColors.black,
                              ),
                            ],
                          ),
                          const SizedBox(height: 7,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.check,color: Colors.black,),
                              TextWidget(
                                title: "Join a social network",size: 16,weight: FontWeight.w400,color: AppColors.black,
                              ),
                            ],
                          ),
                          const SizedBox(height: 7,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.check,color: Colors.black,),
                              TextWidget(
                                title: "Gain confidence and competence",size: 16,weight: FontWeight.w400,color: AppColors.black,
                              ),
                            ],
                          ),
                          const SizedBox(height: 7,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.check,color: Colors.black,),
                              TextWidget(
                                title: "Free insurance cover for your ride",size: 16,weight: FontWeight.w400,color: AppColors.black,
                              ),
                            ],
                          ),
                          const SizedBox(height: 7,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.check,color: Colors.black,),
                              TextWidget(
                                title: "Earn rewards.",size: 16,weight: FontWeight.w400,color: AppColors.black,
                              ),
                            ],
                          ),

                          const Spacer(flex: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:  [
                              ButtonWidget(height: 50,
                                onTap: (){},
                                bgColor: AppColors.green,
                                radius: 0.0,
                                widget: const TextWidget(title: " Join Today ",),
                              ),
                              const SizedBox(width: 50,),
                              ButtonWidget(
                                onTap: (){},height: 50,
                                bgColor: Colors.teal.withOpacity(0.6),
                                boColor: Colors.black,
                                radius: 0.0,
                                widget: const TextWidget(title: "Find a Ride",color: Colors.white,),
                              ),

                            ],
                          ),

                          const Spacer(flex: 20,),
                        ],
                      ),
                    )

                  ],
                )),


                Expanded(child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Opacity(
                      opacity: 0.9,
                      child: Image.asset(AssetsRes.blog2,fit: BoxFit.fitHeight,height: MediaQuery.of(context).size.height*0.98,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:   [
                          const Spacer(flex: 3,),
                          const TextWidget(
                            title: "Join a ride",size: 22,weight: FontWeight.w700,color: AppColors.white,
                          ),
                          const Spacer(flex: 2,),
                          const TextWidget(
                            title: "Join and take part in solo rides.",size: 16,weight: FontWeight.w400,color: AppColors.white,
                          ),
                          const Spacer(flex: 1,),
                          const TextWidget(
                            title: "Benefits",size: 18,weight: FontWeight.w600,color: AppColors.white,
                          ),

                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.check,color: Colors.white,),
                              TextWidget(
                                title: "Increase your physical activity ",size: 16,weight: FontWeight.w400,color: AppColors.white,
                              ),
                            ],
                          ),
                          const SizedBox(height: 7,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.check,color: Colors.white,),
                              TextWidget(
                                title: "Join a social network",size: 16,weight: FontWeight.w400,color: AppColors.white,
                              ),
                            ],
                          ),
                          const SizedBox(height: 7,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.check,color: Colors.white,),
                              TextWidget(
                                title: "Gain confidence and competence",size: 16,weight: FontWeight.w400,color: AppColors.white,
                              ),
                            ],
                          ),
                          const SizedBox(height: 7,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.check,color: Colors.white,),
                              TextWidget(
                                title: "Free insurance cover for your ride",size: 16,weight: FontWeight.w400,color: AppColors.white,
                              ),
                            ],
                          ),
                          const SizedBox(height: 7,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.check,color: Colors.white,),
                              TextWidget(
                                title: "Earn rewards.",size: 16,weight: FontWeight.w400,color: AppColors.white,
                              ),
                            ],
                          ),

                          const Spacer(flex: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:  [
                              ButtonWidget(
                                onTap: (){},
                                bgColor: AppColors.green,height: 50,
                                radius: 0.0,
                                widget: const TextWidget(title: "Register Your Interest",),
                              ),
                              const SizedBox(width: 50,),
                              ButtonWidget(
                                onTap: (){},height: 50,
                                bgColor: Colors.transparent,
                                boColor: AppColors.white,
                                radius: 0.0,
                                widget: const TextWidget(title: "Learn More",color: Colors.white,),
                              ),

                            ],
                          ),

                          const Spacer(flex: 20,),
                        ],
                      ),
                    )

                  ],
                )),
              ],
            ),
          ),
        ) : const SizedBox(),
      ],
    );
  }
}
