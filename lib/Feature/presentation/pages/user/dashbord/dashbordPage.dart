
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../common/responsive.dart';
import '../../../../common/string/color_string.dart';
import '../../../../common/string/route_string.dart';
import '../../../manager/dashbord.dart';
import '../../../widgets/button_widget.dart';
import '../../../widgets/text_widget.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var data = Provider.of<DashBord>(context, listen: false);

    data.getData();
    data.getRides();
    return Scaffold(
      backgroundColor: AppColors.white.withOpacity(0.3),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15.0,
            ),
            Responsive.isDesktop(context)
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextLtdWidget(
                        title: 'Quick Rides Now,\nScanning Goto Riding Cycle',
                        size: 18,
                        color: AppColors.black,
                        line: 3,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      ButtonWidget(
                        onTap: () {
                         setState(() {
                           Navigator.pushNamed(context, RouteString.qrScanner);
                         });
                        },
                        icon: Icons.qr_code,
                        iColor: AppColors.white,
                        bgColor: AppColors.green,
                        widget: const TextWidget(
                          title: "Scan QR",
                          size: 22,
                          color: AppColors.white,
                          weight: FontWeight.w400,
                        ),
                      )
                    ],
                  )
                : SizedBox(
                    width: w * 0.8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const TextLtdWidget(
                          title: 'Quick Rides Now,\nScanning Goto Riding Cycle',
                          size: 18,
                          color: AppColors.white,
                          line: 3,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(
                          height: 50,
                          width: 170,
                          child: ButtonWidget(
                            onTap: () {
                             setState(() {
                               Navigator.pushNamed(
                                   context, RouteString.qrScanner);
                             });
                            },
                            icon: Icons.qr_code,
                            iColor: AppColors.white,
                            bgColor: AppColors.green,
                            widget: const TextWidget(
                              title: "Scan QR",
                              size: 22,
                              color: AppColors.white,
                              weight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
            const SizedBox(
              height: 100.0,
            ),
            Row(
              children: const [
                Icon(Icons.speed, size: 45, color: AppColors.amber),
                TextWidget(
                  title: "DashBord",
                  size: 22,
                  color: AppColors.amber,
                  weight: FontWeight.w400,
                ),
              ],
            ),
            Container(
              width: 330,
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: AppColors.amber)),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Icon(Icons.import_contacts,
                          size: 30, color: AppColors.amber),
                      TextWidget(
                        title: "  My Rides Statics",
                        size: 18,
                        color: AppColors.amber,
                        weight: FontWeight.w600,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 0.0, bottom: 5),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                    height: 80,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppColors.amber, width: 1.0)),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.emoji_events_outlined,
                                size: 30, color: AppColors.green),
                            TextWidget(
                              title: "Reward",
                              size: 18,
                              color: AppColors.green,
                              weight: FontWeight.w600,
                            ),
                          ],
                        ),
                        const Spacer(
                          flex: 3,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  [
                            Spacer(
                              flex: 2,
                            ),
                            TextWidget(
                              title:data.rePoint.toString() ,
                              size: 18,
                              color: AppColors.white,
                              weight: FontWeight.w700,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            TextWidget(
                              title: "Point",
                              size: 14,
                              color: AppColors.white,
                              weight: FontWeight.w600,
                            ),
                            Spacer(
                              flex: 2,
                            ),
                          ],
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 115,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border:
                                Border.all(color: AppColors.amber, width: 3.5)),
                        child:  TextLtdWidget(
                          title: "  ${data.reRide.toString()}\nRides",
                          line: 2,
                          size: 22,
                          color: AppColors.green,
                          weight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        alignment: Alignment.center,
                        height: 115,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border:
                                Border.all(color: AppColors.amber, width: 3.5)),
                        child:  const TextLtdWidget(
                          title: "  1\nDay",
                          line: 2,
                          size: 22,
                          color: AppColors.green,
                          weight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
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
