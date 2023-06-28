import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:walk_mate/Feature/presentation/manager/dashbord.dart';
import 'package:walk_mate/Feature/presentation/manager/riding.dart';

import '../../../../common/string/color_string.dart';
import '../../../../common/string/route_string.dart';
import '../../../../res/assets_res.dart';
import '../../../widgets/button_widget.dart';
import '../../../widgets/snackbar.dart';
import '../../../widgets/text_widget.dart';

class QRScan extends StatefulWidget {
  const QRScan({super.key});
  @override
  State<QRScan> createState() => _QRScanState();
}

class _QRScanState extends State<QRScan> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

   Barcode? result;

  QRViewController? controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      result = null;
    });
  }

  @override
  void reassemble() {
    super.reassemble();
    // if (Platform.isAndroid) {
    //   controller!.pauseCamera();
    // } else if (Platform.isIOS) {
    //   controller!.resumeCamera();
    // }
  }

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<Riding>(context, listen: false);
    var cycle = Provider.of<DashBord>(context, listen: false);
    DateTime now = DateTime.now();
    String time = DateFormat('HH:mm:ss').format(now);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
               SizedBox(
                      height: MediaQuery.of(context).size.height*0.8,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [

                          Row(
                            children: [
                              IconButton(onPressed: (){
                                Navigator.pop(context);
                              }, icon: const Icon(Icons.arrow_back,size: 35,color: AppColors.amber,)),
                              const Spacer(),
                            ],
                          ),
                          const Spacer(),
                          SizedBox(
                            height: 400,
                            width: 400,
                            child: (result != null)
                                ? SizedBox(
                                    child: Column(
                                      children: [
                                        Lottie.asset(AssetsRes.cycle01,height: 350,width: 350),
                                        const TextWidget(title: 'Ready To Ride , Start Now',size: 12,)
                                      ],
                                    ),
                                  ) : QRView(
                              key: qrKey,
                              onQRViewCreated: _onQRViewCreated,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              (result != null)
                                  ? TextWidget(
                                      title: "Cycle ID: ${result!.code}",
                                      size: 16,
                                    )
                                  : const TextWidget(
                                      title: "Cycle ID: ",
                                      size: 16,
                                    ),
                              const Spacer(),
                              ButtonLTDWidget(


                                onTap: () {
                                  if(result != null){
                                    if(result!.code != null) {
                                      var cycleID = int.tryParse(
                                          result!.code.toString());

                                      cycle.getCycle(cycleID!.toInt());

                                      // Navigator.pop(context);
                                      // Navigator.pushReplacementNamed(
                                      //     context, RouteString.ridingPage,arguments:cycleID);
                                      // setState(() {
                                      //   controller!.dispose();
                                      // });

                                    }
                                  }else{
                                    createSnackBar("Plz Scan a Cycle QR",context,Colors.red);
                                  }

                                },radius: 12.0,
                                widget: const TextWidget(
                                  title: "  Start  ",
                                  color: Colors.white,
                                  size: 16,
                                ),
                                bgColor: AppColors.amber,
                              )
                            ],
                          ),
                          const Spacer(flex: 10,),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
