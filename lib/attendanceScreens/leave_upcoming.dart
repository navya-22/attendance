import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Leave_Upcoming extends StatefulWidget {
  const Leave_Upcoming({super.key});

  @override
  State<Leave_Upcoming> createState() => _Leave_UpcomingState();
}

class _Leave_UpcomingState extends State<Leave_Upcoming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Row(
          children: [
            Text('All Leaves '),
            SizedBox(width: 160,),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),border:Border.all(color: Colors.black)),
              child: Icon(Icons.add),
            ),
SizedBox(width: 20,),
       IconButton(icon:  FaIcon(FontAwesomeIcons.sliders,size: 30,),
         onPressed: () {},
         )
          ],
        ),automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
                    children: [
              leaveContainer(color: Colors.blue[50],
                  bordercolor: Colors.blueAccent,
                  text1: 'Leave',
                  text2: 'Balance',
                  text3: '20',textcolor:Colors.blueAccent ),
              
              leaveContainer(color: Colors.lightGreen[50],
                  bordercolor: Colors.lightGreen,
                  text1: 'Leave',
                  text2: 'Approved',
                  text3: '2',textcolor:Colors.lightGreen ),
                    ],
                      ),
            Row(
                children: [
                  leaveContainer(color: Colors.lightBlueAccent[50],
                      bordercolor: Colors.lightBlueAccent,
                      text1: 'Leave',
                      text2: 'Pending',
                      text3: '4',textcolor:Colors.lightBlueAccent ),
                  leaveContainer(color: Colors.red[50],
                      bordercolor: Colors.red,
                      text1: 'Leave',
                      text2: 'Cancelled',
                      text3: '10',textcolor:Colors.red ),
                ],
              ),
        
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  height: 50,
                  width: 130,
                  decoration: BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.circular(15.0)),
                  child: Text('Upcoming',style:TextStyle(color: Colors.white,fontSize: 20),),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  padding: EdgeInsets.all(10.0),
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
                  child: Text(' Past',style:TextStyle(fontSize: 20),),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  padding: EdgeInsets.all(10.0),
                  height: 50,
                  width: 140,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
                  child: Text('Team Leave',style:TextStyle(fontSize: 20),),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width-4.0,
              height: 180,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15.0)),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Text('Date',style: TextStyle(fontSize: 18),),
                      SizedBox(width: 230,),
                      TextButton(style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.lightBlue[50]),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0)))),
                          onPressed: () {},
                          child: Text('Approved',style: TextStyle
                            (color: Colors.lightBlueAccent),))
                    ],
                  ),
                  Text('Apr 15 , 2023 - Apr 18 ,2023',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Divider(color: Colors.grey[200],indent: 20,endIndent: 20,),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Text('Apply Days',style: TextStyle(fontSize: 20),),
                      SizedBox(width: 20,),
                      Text('Leave Balance',style: TextStyle(fontSize: 20)),
                      SizedBox(width: 20,),
                      Text('Approved By',style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Text('3 Days',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                      SizedBox(width: 80,),
                      Text('16',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                      SizedBox(width: 80,),
                      Text('Martin Deo',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width-4.0,
              height: 180,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15.0)),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Text('Date',style: TextStyle(fontSize: 18),),
                      SizedBox(width: 230,),
                      TextButton(style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.lightBlue[50]),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0)))),
                          onPressed: () {},
                          child: Text('Approved',style: TextStyle
                            (color: Colors.lightBlueAccent),))
                    ],
                  ),
                  Text('Mar 10 , 2023 - Mar 12 ,2023',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Divider(color: Colors.grey[200],indent: 20,endIndent: 20,),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Text('Apply Days',style: TextStyle(fontSize: 20),),
                      SizedBox(width: 20,),
                      Text('Leave Balance',style: TextStyle(fontSize: 20)),
                      SizedBox(width: 20,),
                      Text('Approved By',style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Text('2 Days',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                      SizedBox(width: 80,),
                      Text('19',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                      SizedBox(width: 80,),
                      Text('Martin Deo',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                    ],
                  ),
                ],
              ),
            ),
        ],
        ),
      ),
      bottomNavigationBar: Stack(
        alignment: FractionalOffset(.5, 1.0),
        children: [
          Container(height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),

            child: Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.home_outlined,size: 30,),
                SizedBox(width: 70,),
                Icon(Icons.event_note_sharp,color: Colors.blueAccent,size: 30,),
                SizedBox(width: 100,),
                FaIcon(FontAwesomeIcons.umbrellaBeach),
                SizedBox(width: 70,),
                Icon(Icons.person_outline_rounded,size: 30,)
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 60.0),
          child: Container(height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
          color: Colors.blueAccent),
             child: Icon(Icons.person_outline_rounded,color: Colors.white,),),
          ),

        ],
      ),
    );
  }

  Container leaveContainer({ required Color?color,
    required Color bordercolor,
    required String  text1,
    required String text2,
    required String text3,
  required Color textcolor}) {
    return Container(
      padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(10.0),
         height: 130,
          width: 190,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color:color,border:Border.all(color:bordercolor)),
          child: Column(
            children: [
              Text(text1,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text(text2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 10,),
              Text(text3,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:textcolor),),
            ],
          ),
        );
  }
}
