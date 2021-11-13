import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {

  final List<String> _items = [
    'assets/one.jpg',
    'assets/two.jpg',
    'assets/three.jpg',
    'assets/four.jpg',
    'assets/five.jpg',
    'assets/one.jpg',
    'assets/two.jpg',
    'assets/three.jpg',
    'assets/four.jpg',
    'assets/five.jpg',
    'assets/one.jpg',
    'assets/two.jpg',
    'assets/three.jpg',
    'assets/four.jpg',
    'assets/five.jpg',
    'assets/one.jpg',
    'assets/two.jpg',
    'assets/three.jpg',
    'assets/four.jpg',
    'assets/five.jpg',
    'assets/one.jpg',
    'assets/two.jpg',
    'assets/three.jpg',
    'assets/four.jpg',
    'assets/five.jpg',


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

          appBar: AppBar(
            backgroundColor: Colors.amber,
            elevation: 0,
            leading: Icon(Icons.home),
            centerTitle: true,
            title: Text("Home"),


          ),

      body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 225,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("assets/one.jpg"),
                        fit: BoxFit.cover)
                    ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(0.6),
                            Colors.black.withOpacity(0.2),

                          ]
                          )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            
                            Text("Chiar Gallery", style: TextStyle(fontSize: 35,color: Colors.black,fontWeight: FontWeight.bold),),
                            SizedBox(height: 25,),
                            Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 40),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                              ),
                              child: Center(child: Text("Shop Now", style: TextStyle(color: Colors.grey[900]),)),
                            ),
                            SizedBox(height: 25,)
                          ],
                        ),
                      ),
                  ),
                Expanded(child:
                GridView.count(crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: _items.map((item) => Card(
                  color: Colors.transparent,
                  elevation: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(item),
                            fit: BoxFit.cover
                        )
                    ),

                    child: Transform.translate(
                      offset: Offset(75, -75),
                      child:Container(
                        margin: EdgeInsets.symmetric(horizontal: 100,vertical: 100),
                        child: Icon(Icons.bookmark,size: 20,),

                      ) ,


                    ),




                  ),

                )).toList(),

                )

                )



              ],

            ),


          ),
      ),




    );
  }
}
