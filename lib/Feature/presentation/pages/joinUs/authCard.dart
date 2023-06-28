import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:walk_mate/Feature/common/appUtis.dart';
import 'package:walk_mate/Feature/common/string/route_string.dart';

import '../../manager/color_provider.dart';
import '../../widgets/snackbar.dart';

class AuthCard extends StatefulWidget {
  const AuthCard({Key? key}) : super(key: key);

  @override
  State<AuthCard> createState() => _AuthCardState();
}

class _AuthCardState extends State<AuthCard> {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<ColorProvider>(context, listen: false);
    return  Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage('https://lh3.googleusercontent.com/a/AAcHTtfeVkwWpFZMk6TJcxNR7v1EgD3JI8uqelILAWy20w=s192-c-rg-br100'),
          ),
          title: const Text('Md.Jubayer Hossain'),
          subtitle: const Text('jubayer35-625@diu.edu.bd',),
          onTap: (){

           setState(() {
             data.block();
             manageUser();
           });
          }
          ,
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 5.0,top: 5.0),width: MediaQuery.of(context).size.width*0.6,
          decoration: BoxDecoration(
          border: Border.all(color: Colors.black12,width: 1)
        ),),
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage('https://lh3.googleusercontent.com/a/AAcHTtdqSkYlXTiZaYgja0wONrPr74FLBoSMsU7AS4xB-w=s192-c-rg-br100'),
          ),
          title: const Text('Jubayer Hossain'),
          subtitle: const Text('jubayer.engr.soft@gmail.com',),
          onTap: () {
            createSnackBar("Only DIU Gmail Uses",context,Colors.red);
          },
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 5.0,top: 5.0),width: MediaQuery.of(context).size.width*0.6,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black12,width: 1)
          ),),
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage('https://lh3.googleusercontent.com/a/AAcHTtdqSkYlXTiZaYgja0wONrPr74FLBoSMsU7AS4xB-w=s192-c-rg-br100'),
          ),
          title: const Text('Jubayer Polash'),
          subtitle: const Text('jubayerpolash0@gmail.com',),
          onTap: () {
            createSnackBar("Only DIU Gmail Uses",context,Colors.red);
          },
        ),
      ],
    );

  }
 void manageUser()async{
    getStorage.write("userId",'2');
    getStorage.write("userName",'Md. Jubayer Hossain');
    getStorage.write("email",'jubayer35-625@diu.edu.bd');

 var id = await getStorage.read(userId);
 var n = await getStorage.read(userName);
 var e = await getStorage.read(email);
 print(id);
 print(n);
 print(e);
    createSnackBar("Sucessfully Login",context,Colors.green);
setState(() {
  Navigator.pop(context);
 Navigator.pushReplacementNamed(context, RouteString.entryHome);

});
  }
}
