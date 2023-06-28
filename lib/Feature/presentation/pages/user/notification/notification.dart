
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:walk_mate/Feature/presentation/pages/user/history/historyModel/historyModel.dart';
import 'package:walk_mate/Feature/presentation/pages/user/notification/Model.dart';

import '../../../../common/string/color_string.dart';
import '../../../manager/riding.dart';
import '../../../widgets/text_widget.dart';


class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var getData = Provider.of<Riding>(context, listen: false);
    getData.getNotificationData();
    return  Scaffold(
      body: FutureBuilder<List<NotificationModel>>(
        future: getData.getNotificationData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Server is not available'),
            );
          } else {
            final data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final item = snapshot.data![index];
                //print(item.title);
                return  Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orangeAccent,width: 0.5)
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.notifications,color: AppColors.amber,),
                    title: TextWidget(title:item.title,color: Colors.black,size: 16,weight: FontWeight.w400,),
                    subtitle: TextWidget(title:item.description,),
                  ),
                );
              },
            );
          }
        },
      )
    );
  }


}
