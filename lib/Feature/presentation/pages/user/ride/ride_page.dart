
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../../../common/string/color_string.dart';
import '../../../../common/string/route_string.dart';
import '../../../../res/assets_res.dart';
import '../../../manager/riding.dart';
import '../../../widgets/button_widget.dart';
import '../../../widgets/text_widget.dart';


class RidingPage extends StatefulWidget {
    RidingPage({Key? key, required this.cycleID,}) : super(key: key);
   final int cycleID;

  @override
  State<RidingPage> createState() => _RidingPageState();
}

class _RidingPageState extends State<RidingPage> {
  @override

  DateTime now = DateTime.now();
  var totalM = 0;
  var rideTime = '';
  var startTime = '';
  var endTime = '';
  var cost = 0;
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      startTime = DateFormat('HH:mm:ss').format(now);
    });

    print("----------cycle ID ---------");
    print(widget.cycleID);
    rideTime = '';
  }
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<Riding>(context, listen: false);
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd').format(now);
    String time = DateFormat('HH:mm:ss').format(now);
    String date = DateFormat.jm().format(DateFormat("hh:mm:ss").parse(time));



    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Lottie.asset(AssetsRes.cycle010,width: MediaQuery.of(context).size.width),
          Positioned(
              bottom: 0, right: 0, child: Lottie.asset(AssetsRes.cycle06,width: MediaQuery.of(context).size.width)),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 18),
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.deepPurple),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextWidget(
                        title: "Live Status",
                        size: 16.0,
                        weight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      Container(
                        height: 220,
                        width: 400,
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 18),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.grey),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextWidget(
                              title: "Time Remainder",
                              size: 16.0,
                              weight: FontWeight.w400,
                              color: Colors.white,
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Countdown(
                                  seconds: 900,
                                  build: (BuildContext context, double time) {
                                    int minutes = (time / 60).floor();
                                    double seconds = time % 60;
                                    int m =( minutes.toInt() - 14).abs();
                                    int s = (seconds.toInt() - 60).abs();

                                      totalM = m;
                                      rideTime = '$m:$s';

                                  return  TextWidget(
                                      title: '$minutes:${seconds.toInt().toString().padLeft(2, '0')}',
                                      size: 48.0,
                                      weight: FontWeight.w400,
                                      color: Colors.red,
                                    );
                                  },


                                  interval: const Duration(milliseconds: 100),
                                  onFinished: () {
                                    print('Timer is done!');
                                  },
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: TextWidget(
                                    title: "Minutes",
                                    size: 12.0,
                                    weight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const TextWidget(
                              title: "Your riding time limit 15 Minutes.",
                              size: 16.0,
                              weight: FontWeight.w400,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              height: 5.0,
                            )
                          ],
                        ),
                      ),
                      Row(
                        children:  [
                          const TextWidget(
                            title: "Start Time : ",
                            size: 12.0,
                            weight: FontWeight.w600,
                            color: Colors.white,
                          ),
                          TextWidget(
                            title: date.toString() ,
                            size: 12.0,
                            weight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Row(
                        children:  [
                         const TextWidget(
                            title: "Cycle ID : ",
                            size: 12.0,
                            weight: FontWeight.w600,
                            color: Colors.white,
                          ),
                          TextWidget(
                            title: widget.cycleID.toString(),
                            size: 12.0,
                            weight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Row(
                        children:  const [
                          TextWidget(
                            title: "Cost per Minutes ",
                            size: 12.0,
                            weight: FontWeight.w600,
                            color: Colors.white,
                          ),
                          TextWidget(
                            title: '1 Tk',
                            size: 12.0,
                            weight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          ButtonLTDWidget(
                            onTap: ()async {
                              if(totalM>0){
                                cost = totalM * 1 +1;

                              }else if (totalM == 0 ){
                                cost = 1;
                              }


                              print(cost);
                              print(formattedDate.toString());
                              data.getRide(widget.cycleID,formattedDate.toString(),startTime,rideTime,cost.toString());
                              data.createNotification();

                              const Duration(seconds: 2);
                              Navigator.pushReplacementNamed(
                                  context, RouteString.thankPage,arguments: cost.toString());

                            },

                            widget: const TextWidget(
                              title: "Finish",
                              color: Colors.white,
                              size: 16,
                              weight: FontWeight.w700,
                            ),
                            bgColor: AppColors.amber,
                            radius: 8,
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  finishRide()async{
    print(rideTime);
  }
}
