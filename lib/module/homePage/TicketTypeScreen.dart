
import 'package:flutter/material.dart';
import 'package:untitled1/constant.dart';

class TicketTypeScreen extends StatelessWidget {
  const TicketTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ticket Types'),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_outlined) )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          decoration: BoxDecoration(color: btnColor ,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25.0),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                                  child: Text('\$150' ,
                                    style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold ),),
                                ),

                                SizedBox(width: 12,),

                                Column(
                                  children: [
                                    //  CircleAvatar(radius: 8, backgroundColor: Colors.white,),
                                    SizedBox(height: 17,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 5,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 5,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 5,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 5,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 5,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 5,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 17,),



                                  ],
                                ),
                                SizedBox(width: 50,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('AlQemam ', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
                                    Text('Mass Development', style: TextStyle(color: Colors.white ,
                                        fontWeight: FontWeight.bold),),

                                  ],)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            //  SizedBox(width: 56,),
                            SizedBox(width: 82,),
                            CircleAvatar(radius: 8, backgroundColor: Colors.white,),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Row(
                      children: [
                        //  SizedBox(width: 56,),
                        SizedBox(width: 80,),
                      //  SizedBox(height: 222,),

                        CircleAvatar(radius: 8, backgroundColor: Colors.white,),
                      ],
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          decoration: BoxDecoration(color: btnColor ,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25.0),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                                  child: Text('\$200' ,
                                    style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold ),),
                                ),

                                SizedBox(width: 12,),

                                Column(
                                  children: [
                                    //  CircleAvatar(radius: 8, backgroundColor: Colors.white,),
                                    SizedBox(height: 17,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 5,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 5,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 5,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 5,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 5,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 5,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 17,),



                                  ],
                                ),
                                SizedBox(width: 49,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Business Revolution', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
                                   /* Text('Mass Development', style: TextStyle(color: Colors.white ,
                                        fontWeight: FontWeight.bold),)*/

                                  ],)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            //  SizedBox(width: 56,),
                            SizedBox(width: 80,),
                            CircleAvatar(radius: 8, backgroundColor: Colors.white,),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Row(
                      children: [
                        //  SizedBox(width: 56,),
                        SizedBox(width: 80,),
                       // SizedBox(height: 220,),

                        CircleAvatar(radius: 8, backgroundColor: Colors.white,),
                      ],
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Stack(
                      alignment: AlignmentDirectional.bottomStart,

                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Container(
                                decoration: BoxDecoration(color: defColor ,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25.0),

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 3.0),
                                        child: Text('150\$' ,
                                          style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold ),),
                                      ),

                                      SizedBox(width: 12,),

                                      Column(
                                        children: [
                                          //  CircleAvatar(radius: 8, backgroundColor: Colors.white,),
                                          SizedBox(height: 17,),
                                          CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                          SizedBox(height: 5,),
                                          CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                          SizedBox(height: 5,),
                                          CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                          SizedBox(height: 5,),
                                          CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                          SizedBox(height: 5,),
                                          CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                          SizedBox(height: 5,),
                                          CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                          SizedBox(height: 5,),
                                          CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                          SizedBox(height: 17,),



                                        ],
                                      ),
                                      SizedBox(width: 50,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Code Clouders ', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
                                          Text('Mass Development', style: TextStyle(color: Colors.white ,
                                              fontWeight: FontWeight.bold),),

                                        ],)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  //  SizedBox(width: 56,),
                                  SizedBox(width: 80,),
                                  CircleAvatar(radius: 8, backgroundColor: Colors.white,),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Row(
                            children: [
                              //  SizedBox(width: 56,),
                              SizedBox(width: 80,),
                              // SizedBox(height: 220,),

                              CircleAvatar(radius: 8, backgroundColor: Colors.white,),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        //  SizedBox(width: 56,),
                        SizedBox(width: 260,),
                        // SizedBox(height: 220,),

                        CircleAvatar(radius: 18, backgroundColor: btnColor,
                          child: Icon(Icons.check , color: Colors.white,),),
                      ],
                    ),
                  ),

                ],
              ),
            ),

            Column(children: [
              Row(
                children: [
                  Text('Date')
                ],
              )
            ],),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          decoration: BoxDecoration(color: btnColor ,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25.0),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                                  child: Text('\$200' ,
                                    style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold ),),
                                ),

                                SizedBox(width: 12,),

                                Column(
                                  children: [
                                    //  CircleAvatar(radius: 8, backgroundColor: Colors.white,),
                                    SizedBox(height: 17,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 5,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 5,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 5,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 5,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 5,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 5,),
                                    CircleAvatar(radius: 3, backgroundColor: Colors.white,),
                                    SizedBox(height: 17,),



                                  ],
                                ),
                                SizedBox(width: 49,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Business Revolution', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
                                    /* Text('Mass Development', style: TextStyle(color: Colors.white ,
                                        fontWeight: FontWeight.bold),)*/

                                  ],)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            //  SizedBox(width: 56,),
                            SizedBox(width: 80,),
                            CircleAvatar(radius: 8, backgroundColor: Colors.white,),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Row(
                      children: [
                        //  SizedBox(width: 56,),
                        SizedBox(width: 80,),
                        // SizedBox(height: 220,),

                        CircleAvatar(radius: 8, backgroundColor: Colors.white,),
                      ],
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
