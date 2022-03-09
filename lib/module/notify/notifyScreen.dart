import 'package:flutter/material.dart';
import 'package:untitled1/constant.dart';
class NotifyScreen extends StatefulWidget {
  const NotifyScreen({Key? key}) : super(key: key);

  @override
  State<NotifyScreen> createState() => _NotifyScreenState();
}

class _NotifyScreenState extends State<NotifyScreen> {

  bool append = true;
  bool accep = false  ;
  bool cancel = false ;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body:SingleChildScrollView(
          child: Column(
            children: [
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0 , vertical: 30),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: btnColor,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                                color: append == true?  btnColor : Colors.white ,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child:

                           TextButton(onPressed: (){
                             setState(() {
                                 append = true ;
                                 accep = false ;
                                 cancel = false ;
                              });

                            }, child: Text('Pending' ,
                              style: TextStyle(color: append == true?  Colors.white : defColor  ),
                           //  style: TextStyle(color:  Colors.white   ),

                           ))

                        ),
                      ),

                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                                color: accep == true ? btnColor : Colors.white,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: TextButton(onPressed: (){
                              setState(() {
                                append = false ;
                                accep = true ;
                                cancel = false ;
                              });

                            }, child: Text('Accepted',
                             style: TextStyle(color:  accep == true? Colors.white : defColor ),

                            ))),
                      ),

                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                                color: cancel == true ? btnColor : Colors.white,
                            borderRadius: BorderRadius.circular(50)
                            ),
                            child: TextButton(onPressed: (){
                              setState(() {
                                append = false ;
                                accep = false ;
                                cancel = true ;
                              });


                            }, child: Text('Cancelled',
                              style: TextStyle(color:  cancel == true ? Colors.white : defColor ),
                            ))),
                      ),

                    ],
                  ),
                ),
              ),

            /*  Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0 , horizontal:  30.0),
                child: Container(
                  height: 60 ,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: btnColor,
                      width: 2.0,
                    ),
                   borderRadius: BorderRadius.circular(50)),
                  child:
                  AppBar(
                    //backgroundColor: Colors.white,
                    backgroundColor: Colors.green,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),

                    bottom: TabBar(
                      tabs: [
                           Container(

                               height: 54,
                               decoration: BoxDecoration(
                                color:  btnColor ,
                                borderRadius: BorderRadius.circular(50)

                               ),
                             child: Tab( child: Text('Appended' , maxLines: 1 ,) , ) ,),

                          Container(
                            height: 54,
                            decoration: BoxDecoration(
                                color:  btnColor ,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Tab( child: Text('Accepted' , maxLines: 1,) )),

                        Container(
                          height: 54,
                            decoration: BoxDecoration(
                                color:  btnColor ,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Tab( child: Text('Canclled' , maxLines: 1, ) )),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30,),

              Container(
                height: 100,
                child: TabBarView(
                    children: [

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Card(
                          elevation: 5,
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.orange,
                              ) ,
                              Column(
                                children: [
                                  Text('john Deo')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Card(
                          elevation: 5,

                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.orange,
                              ) ,
                              Column(
                                children: [
                                  Text('john Deo')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Card(
                          elevation: 5,
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.orange,
                              ) ,
                              Column(
                                children: [
                                  Text('john Deo')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),

                ]
                ),
              ),*/

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15.0),
               child: Card(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.orange,
                      ) ,
                      Column(
                        children: [
                          Text('john Deo')
                        ],
                      )
                    ],
                  ),
                ),
             ),


            ],
          ),


    )));
  }

 /* Widget Pended()=> SingleChildScrollView(
    child: Column(
      children: [
        /*  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0 , vertical: 30),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: btnColor,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                                color:  btnColor ,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: TextButton(onPressed: (){

                            }, child: Text('Pending' ,
                              style: TextStyle(color:   Colors.white  ),
                            ))),
                      ),

                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                              //  color: Accep == true ? btnColor : Colors.white,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: TextButton(onPressed: (){

                            }, child: Text('Accepted',
                             // style: TextStyle(color:  Accep == true? Colors.white : defColor ),

                            ))),
                      ),

                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                               // color: cancell == true ? btnColor : Colors.white,
                            borderRadius: BorderRadius.circular(50)
                            ),
                            child: TextButton(onPressed: (){
                            ;
                            }, child: Text('Cancelled',
                             // style: TextStyle(color:  cancell == true ? Colors.white : defColor ),
                            ))),
                      ),

                    ],
                  ),
                ),
              ),*/
        Container(
          child: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'Appended',),
                Tab(text: 'Accepted',) ,
                Tab(text: 'Canclled',),

              ],
            ),
          ),
        ),

        Card(
          child: Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: Colors.orange,
              ) ,
              Column(
                children: [
                  Text('john Deo')
                ],
              )
            ],
          ),
        ),
      ],
    ),
  ) ;*/
  Widget Pended()=> Text('11');
}
