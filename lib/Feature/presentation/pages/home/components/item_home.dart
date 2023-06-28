// import 'package:allinone/Feature/common/string/color_string.dart';
// import 'package:allinone/Feature/presentation/widgets/button_widget.dart';
// import 'package:allinone/Feature/presentation/widgets/text_widget.dart';
// import 'package:allinone/Feature/res/assets_res.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
//
// class HomeItem extends StatelessWidget {
//   const HomeItem({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const TextWidget(title: "Available Cycles",color: Colors.white,size: 18,weight: FontWeight.w700,),
//           Wrap(
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(8.0),
//                 margin: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
//                 height: 150,
//                 width: 150,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12.0),
//                   color: Colors.white.withOpacity(0.7),
//                 ),
//                 child: Stack(
//                   alignment: Alignment.bottomCenter,
//
//                   children: [
//                     Lottie.asset(AssetsRes.cycle01,height: 150,width: 150),
//                     const Positioned(
//                       bottom: 1,left: 1,
//                         child: TextWidget(title: "Zeus",size: 15,weight: FontWeight.w700,color: AppColors.black,)),
//                     Positioned(
//                     top: 1,right: 1,
//                         child: IconButton(onPressed: () {  }, icon: const Icon(Icons.favorite_border_outlined,color: AppColors.red,),)),
//                     Positioned(
//                         bottom: 1,right: 1,
//                         child: ButtonWidget(onTap: (){},height: 30,width: 48.0,widget: const TextWidget(title: "Rides",size: 12,color: AppColors.white,),radius: 15.0,))
//                   ],
//                 ),
//               ),
//
//               Container(
//                 padding: const EdgeInsets.all(8.0),
//                 margin: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
//                 height: 150,
//                 width: 150,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12.0),
//                   color: Colors.white.withOpacity(0.7),
//                 ),
//                 child: Stack(
//                   alignment: Alignment.bottomCenter,
//
//                   children: [
//                     Lottie.asset(AssetsRes.cycle01),
//                     const Positioned(
//                         bottom: 1,left: 1,
//                         child: TextWidget(title: "Zeus",size: 15,weight: FontWeight.w700,color: AppColors.black,)),
//                     Positioned(
//                         top: 1,right: 1,
//                         child: IconButton(onPressed: () {  }, icon: const Icon(Icons.favorite_border_outlined,color: AppColors.red,),)),
//                     Positioned(
//                         bottom: 1,right: 1,
//                         child: ButtonWidget(onTap: (){},height: 30,width: 48.0,widget: const TextWidget(title: "Rides",size: 12,color: AppColors.white,),radius: 15.0,))
//                   ],
//                 ),
//               ),
//
//
//
//               Container(
//                 padding: const EdgeInsets.all(8.0),
//                 margin: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
//                 height: 150,
//                 width: 150,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12.0),
//                   color: Colors.white.withOpacity(0.7),
//                 ),
//                 child: Stack(
//                   alignment: Alignment.bottomCenter,
//
//                   children: [
//                     Lottie.asset(AssetsRes.cycle01),
//                     const Positioned(
//                         bottom: 1,left: 1,
//                         child: TextWidget(title: "Zeus",size: 15,weight: FontWeight.w700,color: AppColors.black,)),
//                     Positioned(
//                         top: 1,right: 1,
//                         child: IconButton(onPressed: () {  }, icon: const Icon(Icons.favorite_border_outlined,color: AppColors.red,),)),
//                     Positioned(
//                         bottom: 1,right: 1,
//                         child: ButtonWidget(onTap: (){},height: 30,width: 48.0,widget: const TextWidget(title: "Rides",size: 12,color: AppColors.white,),radius: 15.0,))
//                   ],
//                 ),
//               ),
//
//               Container(
//                 padding: const EdgeInsets.all(8.0),
//                 margin: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
//                 height: 150,
//                 width: 150,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12.0),
//                   color: Colors.white.withOpacity(0.7),
//                 ),
//                 child: Stack(
//                   alignment: Alignment.bottomCenter,
//
//                   children: [
//                     Lottie.asset(AssetsRes.cycle01),
//                     const Positioned(
//                         bottom: 1,left: 1,
//                         child: TextWidget(title: "Zeus",size: 15,weight: FontWeight.w700,color: AppColors.black,)),
//                     Positioned(
//                         top: 1,right: 1,
//                         child: IconButton(onPressed: () {  }, icon: const Icon(Icons.favorite_border_outlined,color: AppColors.red,),)),
//                     Positioned(
//                         bottom: 1,right: 1,
//                         child: ButtonWidget(onTap: (){},height: 30,width: 48.0,widget: const TextWidget(title: "Rides",size: 12,color: AppColors.white,),radius: 15.0,))
//                   ],
//                 ),
//               ),
//
//               Container(
//                 padding: const EdgeInsets.all(8.0),
//                 margin: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
//                 height: 150,
//                 width: 150,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12.0),
//                   color: Colors.white.withOpacity(0.7),
//                 ),
//                 child: Stack(
//                   alignment: Alignment.bottomCenter,
//
//                   children: [
//                     Lottie.asset(AssetsRes.cycle01),
//                     const Positioned(
//                         bottom: 1,left: 1,
//                         child: TextWidget(title: "Zeus",size: 15,weight: FontWeight.w700,color: AppColors.black,)),
//                     Positioned(
//                         top: 1,right: 1,
//                         child: IconButton(onPressed: () {  }, icon: const Icon(Icons.favorite_border_outlined,color: AppColors.red,),)),
//                     Positioned(
//                         bottom: 1,right: 1,
//                         child: ButtonWidget(onTap: (){},height: 30,width: 48.0,widget: const TextWidget(title: "Rides",size: 12,color: AppColors.white,),radius: 15.0,))
//                   ],
//                 ),
//               ),
//
//               Container(
//                 padding: const EdgeInsets.all(8.0),
//                 margin: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
//                 height: 150,
//                 width: 150,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12.0),
//                   color: Colors.white.withOpacity(0.7),
//                 ),
//                 child: Stack(
//                   alignment: Alignment.bottomCenter,
//
//                   children: [
//                     Lottie.asset(AssetsRes.cycle01),
//                     const Positioned(
//                         bottom: 1,left: 1,
//                         child: TextWidget(title: "Zeus",size: 15,weight: FontWeight.w700,color: AppColors.black,)),
//                     Positioned(
//                         top: 1,right: 1,
//                         child: IconButton(onPressed: () {  }, icon: const Icon(Icons.favorite_border_outlined,color: AppColors.red,),)),
//                     Positioned(
//                         bottom: 1,right: 1,
//                         child: ButtonWidget(onTap: (){},height: 30,width: 48.0,widget: const TextWidget(title: "Rides",size: 12,color: AppColors.white,),radius: 15.0,))
//                   ],
//                 ),
//               ),
//
//
//
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
