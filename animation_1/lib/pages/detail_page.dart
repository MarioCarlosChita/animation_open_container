import 'package:flutter/material.dart';
class DetailPage extends StatelessWidget {

  String page;
  DetailPage({required  this.page});
  @override

  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.black12,
          body: Container(
               child: Center(
                 child: Text(this.page.toString(),style: TextStyle().copyWith(
                    color:Colors.white,
                    fontSize: 53,
                    fontWeight: FontWeight.bold
                 ),),
               ),
          ),
    );
  }
}
