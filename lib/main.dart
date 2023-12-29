import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Todo App",
      home: HomeScreen(),
    );
  }

}
class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        leading: Icon(
          Icons.home,color:Colors.black54,
        ),
        title: Text("Home",style: TextStyle(color: Colors.black),),
        elevation: 4,
      ) ,
      /*
    body: Column(
        children: [
      Text("hello"),Text("world"),
    ElevatedButton(onPressed: (){
      //showAboutDialog(context:context,);
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text('sojib'),
          content: Text("hello bodda i am coming"),
          actions: [
            ElevatedButton(onPressed: (){}, child: Text("cancel")),
          ],
          
        );

      });
    },
        child:Text("Button")),
       ],
      body:
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
          Text("hello"),
          Text("hello"),
    Text("hello"),
    Text("hello"),
    Text("hello"),
            Row(
              children: [Text("data")],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
             children:[ Text('sojib'),Text("data"),]
            )

          ]

        ),

      */
      body: Column(
        children: [
          RichText(text:TextSpan(
            text: 'hello',
            style: TextStyle(color: Colors.brown),
            children: [
              TextSpan(
                text: 'from',
                    style:TextStyle(
                      color: Colors.amberAccent
                    )
              )
            ]
          )

          ),
          Text("data"),Text("data"),
          ElevatedButton(onPressed: (){
            showModalBottomSheet(
                isDismissible: false,
                backgroundColor: Colors.amberAccent,
                barrierColor: Colors.blue,


                context: context, builder: (context)
            {
              return Column(
                children: [Text("data")],);
            });
            
          }, child: (Text("sojib"
          
          )))
        ],
      )
      ,

    );




  }

}