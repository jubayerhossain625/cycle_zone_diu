import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scalable_data_table/scalable_data_table.dart';
import 'package:intl/intl.dart';

import '../../../../data/HardData.dart';
import '../../../manager/riding.dart';
import 'historyModel/historyModel.dart';




class HistoryTable extends StatefulWidget {
  const HistoryTable({Key? key}) : super(key: key);

  static final _dateFormat = DateFormat('HH:mm dd/MM');

  @override
  State<HistoryTable> createState() => _HistoryTableState();
}

class _HistoryTableState extends State<HistoryTable> {





  Future<List<History>> getData()async {
   return HeardDataService().getHistory();
  }

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<Riding>(context, listen: false);
    data.getHistoryData();
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: FutureBuilder<List<History>>(
        future: data.getHistoryData(),
        builder: (context, snapshot) => ScalableDataTable(
          header: DefaultTextStyle(
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
            child: ScalableTableHeader(
              columnWrapper: columnWrapper,
              children: const [
                SizedBox(),
                Text('Date Time'),
                Text('Ride N0'),
                Text('Cycle ID'),
                Text('Start Time'),
                Text('Duration'),
                Text('Cost'),
              ],
            ),
          ),
          rowBuilder: (context, index) {
            final history = snapshot.data![index];
            return ScalableTableRow(
              columnWrapper: columnWrapper,
              color: MaterialStateColor.resolveWith((states) =>
              (index % 2 == 0) ? Colors.grey[200]! : Colors.transparent),
              children: [
                // Align(
                //   alignment: Alignment.centerRight,
                //   child: Text('${history.id}.'),
                // ),
                SizedBox(),
                Text(history.startTime!),
                Text(history.rideId.toString()!),
                Text(history.cycleId.toString()!),
                Text(history.startTime!),
                Text(history.endTime!),
                Text(history.cost!+" tk"),
              ],
            );
          },
          emptyBuilder: (context) => const Text('No users yet...'),
          itemCount: snapshot.data?.length ?? -1,
          minWidth: 1000, // max(MediaQuery.of(context).size.width, 1000),
          textStyle: TextStyle(color: Colors.grey[700], fontSize: 14),
        ),
      ),
    );
  }

  Widget columnWrapper(BuildContext context, int columnIndex, Widget child) {
    const padding = EdgeInsets.symmetric(horizontal: 10);
    switch (columnIndex) {
      case 0:
        return Container(
          width: 60,
          padding: padding,
          child: child,
        );
      case 1:
        return Container(
          width: 100,
          padding: padding,
          child: child,
        );
      case 5:
        return Expanded(
          flex: 3,
          child: Container(
            padding: padding,
            child: child,
          ),
        );
      default:
        return Expanded(
          child: Container(
            padding: padding,
            child: child,
          ),
        );
    }
  }
}