import 'package:flutter/material.dart';
class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,

          children: [
          Row( mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 40,),
         post2( 'images/cat.png', 'البقاله')  ,
              SizedBox(width: 10,height: 10),
              post2( 'images/cat.png', 'مطاعم')  ,

            ],),SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center,

              children: [
                post( 'images/cat.png', 'البقاله')  ,
                SizedBox(width: 10,height: 10),
                post( 'images/cat.png', 'مطاعم')  ,
                SizedBox(width: 10,height: 10),
                post( 'images/cat.png', 'مطاعم')  ,
              ],),
            SizedBox(height: 20,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 390,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Positioned(
                              top: 10.0,
                              right: 290.0,
                              left: 10.0,
                              child: Container(
                                  width: 60,
                                  height: 70,
                                  child: Icon(
                                    Icons.favorite_outline_sharp,size: 35,
                                    color: Colors.white,
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 120,left: 50),
                              child: Column(
                                children: [
                                  Positioned(
                                    top: 118.0,
                                    right: 280.0,
                                    left: 10.0,
                                    child: Container(
                                        width: 20,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Colors.grey[100],
                                        ),
                                        child: Center(
                                            child: Text(
                                              '1\nس',
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                            )
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [

                        SizedBox(
                          width: 60,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 260),
                          child: Text(
                            'كاهي فيروز',
                            style: TextStyle(
                                 fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),  SizedBox(
                          height: 10,
                        ),
                    Padding(
                      padding: const EdgeInsets.only(right: 75),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'الفطور.',
                                style: TextStyle(fontSize: 16,color: Colors.black),
                              ),
                              Text(
                                '\$\$',
                                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                              ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),

Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
  Padding(
    padding: const EdgeInsets.only(left: 250),
    child:
    Container(width: 110,height: 50,
      decoration: BoxDecoration(
          color: Colors.blueGrey[100],
          borderRadius: BorderRadius.circular(8)
      ),
      child: Row( mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(children: [
                Text('اكتساب نقاط',style: TextStyle(color: Colors.blueAccent),
                ),
                Icon(Icons.plus_one,color: Colors.blueAccent,),],),
        ],
      ),),

  ),
    Padding(
      padding: const EdgeInsets.only(right: 50),
      child: Container(width: 60,height: 40,
        decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)
        ),
        child: Row(children: [ Icon(Icons.star,color: Colors.greenAccent,),
          Text('4.9')],),),
    ),

],),


                      ],
                    ),
              ],
            ),
              ],
            ),

      ),)
    );
  }
  Container post(String pic,String text)
  { return Container(width: 130,height: 90,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white60,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              blurRadius: 60,
              spreadRadius: 8,
              offset: Offset(0, 2)),
        ]
    ),
    child: Center(child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [  Image.asset(pic),

        SizedBox(height: 20,),
        Text(text,style: TextStyle(fontSize: 15),)],)),
  );}
  Container post2(String pic,String text)
  { return  Container(width: 200,height: 100,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white60,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              blurRadius: 60,
              spreadRadius: 8,
              offset: Offset(0, 2)),
        ]
    ),
    child: Center(child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [  Image.asset(pic),


        Text(text,style: TextStyle(fontSize: 15),)],)),
  );}
}
