import 'package:flutter/cupertino.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
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


             Text( """    Today """ , style: TextStyle(fontWeight: FontWeight.bold , color: defColor),),

          if( append == true ) Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  height: 130,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0 , vertical: 15 ),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 27,
                              backgroundImage:
                              NetworkImage('https://us.123rf.com/450wm/mimagephotography/mimagephotography1602/mimagephotography160200833/53356511-close-up-portrait-of-a-smiling-young-african-american-man-in-a-denim-shirt-against-white-background.jpg')),

                          SizedBox(width : 15,),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text('John Deo' ,
                                    style: TextStyle(color: defColor , fontWeight: FontWeight.bold),),
                                  Text("" ' Has Applied On '"" , maxLines: 2,),
                                ],
                              ),
                              Text('Business Innovation Event' ),

                              SizedBox(height: 15,),

                              Row(children: [
                                Text('Status : '),
                                Text('Pending ' , style: TextStyle(color: btnColor , fontWeight: FontWeight.w600),),
                                SizedBox(width: 80,),
                                Text('2h')

                              ],)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ) ,
              if( accep == true ) Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  height: 130,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0 , vertical: 15 ),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 27,
                              backgroundImage:
                              NetworkImage('https://us.123rf.com/450wm/mimagephotography/mimagephotography1602/mimagephotography160200833/53356511-close-up-portrait-of-a-smiling-young-african-american-man-in-a-denim-shirt-against-white-background.jpg')),

                          SizedBox(width : 15,),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text('John Deo' ,
                                    style: TextStyle(color: defColor , fontWeight: FontWeight.bold),),
                                  Text("" ' Has Applied On '"" , maxLines: 2,),
                                ],
                              ),
                              Text('Business Innovation Event' ),

                              SizedBox(height: 15,),

                              Row(children: [
                                Text('Status : '),
                                Text('Accepted ' , style: TextStyle(color: Colors.green , fontWeight: FontWeight.w600),),
                                SizedBox(width: 80,),
                                Text('2h')

                              ],)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ) ,
              if( cancel == true ) Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  height: 130,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0 , vertical: 15 ),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 27,
                              backgroundImage:
                              NetworkImage('https://us.123rf.com/450wm/mimagephotography/mimagephotography1602/mimagephotography160200833/53356511-close-up-portrait-of-a-smiling-young-african-american-man-in-a-denim-shirt-against-white-background.jpg')),

                          SizedBox(width : 15,),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text('John Deo' ,
                                    style: TextStyle(color: defColor , fontWeight: FontWeight.bold),),
                                  Text("" ' Has Applied On '"" , maxLines: 2,),
                                ],
                              ),
                              Text('Business Innovation Event' ),

                              SizedBox(height: 15,),

                              Row(children: [
                                Text('Status : '),
                                Text('Canclled ' , style: TextStyle(color: Colors.red , fontWeight: FontWeight.w600),),
                                SizedBox(width: 80,),
                                Text('2h')

                              ],)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ) ,

              SizedBox(height: 15,),

              Container(
                height: 120,
                child: ListView.separated(
                  shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context , index) {
                    if(accep == true) { return itemAccepted() ;}
                      else if (cancel == true) { return itemCancelled() ;}
                      else
                      return item();
                    },
                    separatorBuilder: (context , index)=> SizedBox(height: 15,),
                    itemCount: 2),
              ),

              SizedBox(height: 15,),
              Text( """    Yesterday """ , style: TextStyle(fontWeight: FontWeight.bold , color: defColor),),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  height: 130,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0 , vertical: 15 ),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 27,
                              backgroundImage:
                              NetworkImage('https://us.123rf.com/450wm/mimagephotography/mimagephotography1602/mimagephotography160200833/53356511-close-up-portrait-of-a-smiling-young-african-american-man-in-a-denim-shirt-against-white-background.jpg')),

                          SizedBox(width : 15,),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text('John Deo' ,
                                    style: TextStyle(color: defColor , fontWeight: FontWeight.bold),),
                                  Text("" ' Has Applied On '"" , maxLines: 2,),
                                ],
                              ),
                              Text('Business Innovation Event' ),

                              SizedBox(height: 15,),

                              Row(children: [
                                Text('Status : '),
                                Text('Pending ' , style: TextStyle(color: btnColor , fontWeight: FontWeight.w600),),
                                SizedBox(width: 80,),
                                Text('2h')

                              ],)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ) ,
              SizedBox(height: 15,),

              Container(
                height: 120,
                child: ListView.separated(
                    itemBuilder: (context , index) {
                      if(accep == true) { return itemAccepted() ;}
                      else if (cancel == true) { return itemCancelled() ;}
                      else
                        return item();
                    },
                    separatorBuilder: (context , index)=> SizedBox(height: 15,),
                    itemCount: 2),
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

  Widget item() => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15.0),
  child: Container(
  height: 130,
  child: Card(
  child: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10.0 , vertical: 15 ),
  child: Row(
  children: [
  CircleAvatar(
  radius: 27,
  backgroundImage:
  NetworkImage('https://us.123rf.com/450wm/luismolinero/luismolinero1909/luismolinero190917934/130592146-handsome-young-man-in-pink-shirt-over-isolated-blue-background-keeping-the-arms-crossed-in-frontal-p.jpg')),

  SizedBox(width : 15,),

  Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  SizedBox(height: 10,),
  Row(
  children: [
  Text('John Deo' ,
  style: TextStyle(color: defColor , fontWeight: FontWeight.bold),),
  Text("" ' Has Applied On '"" , maxLines: 2,),
  ],
  ),
  Text('Business Innovation Event' ),

  SizedBox(height: 15,),

  Row(children: [
  Text('Status : '),
  Text('Pending ' , style: TextStyle(color: btnColor , fontWeight: FontWeight.w600),),
  SizedBox(width: 80,),
  Text('2h')

  ],)
  ],
  )
  ],
  ),
  ),
  ),
  ),
  ) ;


  Widget itemAccepted() => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Container(
      height: 130,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0 , vertical: 15 ),
          child: Row(
            children: [
              CircleAvatar(
                  radius: 27,
                  backgroundImage:
                  NetworkImage('https://us.123rf.com/450wm/luismolinero/luismolinero1909/luismolinero190917934/130592146-handsome-young-man-in-pink-shirt-over-isolated-blue-background-keeping-the-arms-crossed-in-frontal-p.jpg')),

              SizedBox(width : 15,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('John Deo' ,
                        style: TextStyle(color: defColor , fontWeight: FontWeight.bold),),
                      Text("" ' Has Applied On '"" , maxLines: 2,),
                    ],
                  ),
                  Text('Business Innovation Event' ),

                  SizedBox(height: 15,),

                  Row(children: [
                    Text('Status : '),
                    Text('Accepted ' , style: TextStyle(color: Colors.green , fontWeight: FontWeight.w600),),
                    SizedBox(width: 80,),
                    Text('2h')

                  ],)
                ],
              )
            ],
          ),
        ),
      ),
    ),
  ) ;

  Widget itemCancelled() => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Container(
      height: 130,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0 , vertical: 15 ),
          child: Row(
            children: [
              CircleAvatar(
                  radius: 27,
                  backgroundImage:
                  NetworkImage('https://us.123rf.com/450wm/luismolinero/luismolinero1909/luismolinero190917934/130592146-handsome-young-man-in-pink-shirt-over-isolated-blue-background-keeping-the-arms-crossed-in-frontal-p.jpg')),

              SizedBox(width : 15,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('John Deo' ,
                        style: TextStyle(color: defColor , fontWeight: FontWeight.bold),),
                      Text("" ' Has Applied On '"" , maxLines: 2,),
                    ],
                  ),
                  Text('Business Innovation Event' ),

                  SizedBox(height: 15,),

                  Row(children: [
                    Text('Status : '),
                    Text('Cancelled ' , style: TextStyle(color: Colors.red , fontWeight: FontWeight.w600),),
                    SizedBox(width: 80,),
                    Text('2h')

                  ],)
                ],
              )
            ],
          ),
        ),
      ),
    ),
  ) ;


}
