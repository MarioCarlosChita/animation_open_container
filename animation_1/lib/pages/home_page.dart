import 'package:animation_1/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 final  List<String > _listaItems =  List.generate(10, (index) => index.toString());

  @override
  Widget build(BuildContext context) {
    Size _DeviceSize  = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
           padding: const  EdgeInsets.symmetric(horizontal: 5 ,  vertical: 5),
           child:ListView.separated(
               itemCount: _listaItems.length,
               itemBuilder: (_, index){
                   return OpenContainer(
                       openColor: Colors.black12,
                       closedBuilder: (_, action){
                         return Container(
                            width: _DeviceSize.width,
                            height: 120,
                            color: Colors.black12,
                         );
                       },
                       openBuilder: (context ,action){
                           return DetailPage(page:_listaItems[index]);
                       } ,
                       transitionDuration: const Duration(milliseconds:450),
                       transitionType: ContainerTransitionType.fadeThrough,

                   );
               },
               separatorBuilder: (_ ,index) => const  Divider(color: Colors.black54,)
           ),
        ),
    );
  }
}
