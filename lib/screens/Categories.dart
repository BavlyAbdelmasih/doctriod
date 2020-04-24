import 'package:doctriod/widgets/CategoryItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class categories extends StatelessWidget {
 final  optionStyle;


   const categories({
    Key key,
    @required this.optionStyle,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     appBar: AppBar(
       title: Center(child: Text("Categories")),
       flexibleSpace: Container(
         decoration: BoxDecoration(
             gradient: LinearGradient(
                 begin: Alignment.topRight,
                 end: Alignment.bottomLeft,
                 colors: <Color>[Colors.blue, Colors.green])),
       ),
     ),
     body: CustomScrollView(
       primary: false,
       slivers: <Widget>[
         SliverPadding(
           padding: const EdgeInsets.all(20),
           sliver: SliverGrid.count(
             crossAxisSpacing: 30,
             mainAxisSpacing: 30,
             crossAxisCount: 2,
             children: <Widget>[
               CategoryItem(),
               CategoryItem(),
               CategoryItem(),
               CategoryItem(),
               CategoryItem(),
               CategoryItem(),
             ],
           ),
         ),
       ],
     ),
   );
  }

}




