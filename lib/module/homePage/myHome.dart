import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/model/imageModel.dart';
import 'package:untitled1/shared/style/icon-Broken.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ImageModel> imgs = [
      ImageModel(image: 'https://img.freepik.com/free-photo/beautiful-wide-shot-eiffel-tower-paris-surrounded-by-water-with-ships-colorful-sky_181624-5118.jpg?size=626&ext=jpg&ga=GA1.2.366265905.1646643516', imgName: 'Festival', imgSubName: 'Kornish Jeddh', month: 'Feb', day: '06'),
      ImageModel(image: 'https://img.freepik.com/free-photo/view-downtown-raleigh-north-carolina-from-street-level-hdr-image_1127-3128.jpg?size=626&ext=jpg&ga=GA1.2.366265905.1646643516', imgName: 'Festival', imgSubName: 'Kornish Jeddh', month: 'Feb', day: '06'),
      ImageModel(image: 'https://img.freepik.com/free-photo/beautiful-wide-shot-eiffel-tower-paris-surrounded-by-water-with-ships-colorful-sky_181624-5118.jpg?size=626&ext=jpg&ga=GA1.2.366265905.1646643516', imgName: 'Festival', imgSubName: 'Kornish Jeddh', month: 'Feb', day: '06'),
      ImageModel(image: 'https://img.freepik.com/free-photo/beautiful-wide-shot-eiffel-tower-paris-surrounded-by-water-with-ships-colorful-sky_181624-5118.jpg?size=626&ext=jpg&ga=GA1.2.366265905.1646643516', imgName: 'Festival', imgSubName: 'Kornish Jeddh', month: 'Feb', day: '06'),

    ];

    List<String> sponosor = [
           '1.png' ,
            '2.png' ,
            '3.png' ,
            '4.png' ,
            '5.png' ,
    ] ;

    List<String> item2 = [
      '6.png' ,
      '2.png' ,
      '7.png' ,
      '8.png' ,
      '9.png' ,
    ] ;

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Stack(
                alignment: Alignment.centerLeft,
                children:
               [
                 Container(
                  height: 250,
                  width: double.infinity,
                  child: Image.network('https://t3.ftcdn.net/jpg/02/50/23/20/240_F_250232047_z9kCGCC2l3NShBNy1BJ8H3nVe9pWpnff.jpg' ,
                    fit:BoxFit.cover ,),
                ),

                 Container(
                   height: 250,
                   width: double.infinity,
                   color: Color(0xFF053F80).withOpacity(0.3),
                 ),


               /*  CircleAvatar(
                  //backgroundColor: Colors.white,
                  // backgroundColor: Colors.transparent,
                   backgroundImage: NetworkImage('https://i.pinimg.com/736x/b2/3d/70/b23d705cf76c214522a64c36938fb99b--galaxy-tabs-samsung-galaxy-s.jpg'  )  ,
                   radius: 50,

                  // child:
                 /*  Container(
                       // clipBehavior: Clip.antiAlias,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       border: Border.all(color: Colors.red)
                     ),
                         height: 100,
                         width: 100,
                       child: Image.network('https://i.pinimg.com/736x/b2/3d/70/b23d705cf76c214522a64c36938fb99b--galaxy-tabs-samsung-galaxy-s.jpg' ?? '')
                         ) ,*/
                 ),*/


                 Row(
                   children: [
                     Container(
                       margin: EdgeInsets.only(left: 20),
                       height: 100,
                       width: 100,
                       child: Stack(
                         clipBehavior: Clip.antiAlias ,
                         alignment: Alignment.topCenter,
                         children: [
                           Container(
                              width: 100,
                              height: 100,
                             decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 color: Colors.white,
                                 border: Border.all(color: Colors.white))
                           ),

                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Container(
                               width: 80,
                                 height: 80,
                                 child: Image.network('https://i.pinimg.com/736x/b2/3d/70/b23d705cf76c214522a64c36938fb99b--galaxy-tabs-samsung-galaxy-s.jpg'  )),
                           )

                         ],
                       ),
                     ),

                     SizedBox(width: 20,),

                     Expanded(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start ,
                         children: [
                           Text('Samsung' , style: TextStyle(
                               color: Colors.white ,
                               fontWeight: FontWeight.bold ,
                               fontSize: 22),),

                           SizedBox(height: 20,),

                           Text('it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout' ,
                             maxLines: 3,
                             style: TextStyle(color: Colors.white),),

                           SizedBox(height: 20,),

                           Row(
                             children: [
                               FaIcon( FontAwesomeIcons.facebook , color: Colors.white,),
                               SizedBox(width: 10,),
                               FaIcon( FontAwesomeIcons.twitter , color: Colors.white, ),
                               SizedBox(width: 10,),
                               FaIcon( FontAwesomeIcons.youtube , color: Colors.white,),
                               SizedBox(width: 10,),
                               FaIcon( FontAwesomeIcons.instagram , color: Colors.white,),


                             ],
                           )
                         ],
                       ),
                     ),



                   ],
                 )
          ]
              ) ,
             Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0 , horizontal: 20),
            child: Text('it is a long established fact that a reader will'
                ' be distracted by the readable content of'
                ' a page when looking at its layout'),
          ) ,

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0 , horizontal: 10),

                child: Container(
                  child: Row(children: [
                    GestureDetector(
                      onTap: (){
                        print('upcoming');
                      },
                      child: Container(
                        height: 40,
                        width: 115,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: btnColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft:Radius.circular(20) ,
                              bottomLeft: Radius.circular(20))
                        ),

                        child: Text('UpComing Events' , style: TextStyle(color: defColor , fontSize: 12),),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        print('current Event');
                      },
                      child: Container(
                        height: 40,
                        width: 110,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: btnColor,
                            border: Border.all(
                              color: btnColor, //                   <--- border color
                            )),
                        child: Text('Current Events' , style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        print('Archived Event');
                      },
                      child: Container(
                        height: 40,
                        width: 115,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: btnColor, //                   <--- border color
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.only(
                                topRight:Radius.circular(20) ,
                                bottomRight: Radius.circular(20))
                        ),

                        child: Text('Archived Events' , style: TextStyle(color: defColor , fontSize: 12),),
                      ),
                    ),
                  ],),
                ),
              ),

              SizedBox(height: 10,),

              SingleChildScrollView(
              physics: BouncingScrollPhysics(),
               scrollDirection: Axis.horizontal,

             child:

              Padding(
                padding: const EdgeInsets.symmetric( horizontal: 25 ),

                child: Container(
                  height: 200 ,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: imgs.length , itemBuilder: (context , index )=> cardItem(imgs[index])  ,
                    separatorBuilder: (context , index)=> SizedBox(width: 20,),
                  ),
                ),
              ),

            ) ,

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('Sponsors' , style: TextStyle(color: defColor , fontWeight: FontWeight.bold),),
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child:
                    Padding(
                      padding: const EdgeInsets.symmetric( horizontal: 25 ),

                      child: Container(
                        height: 100 ,
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: sponosor.length , itemBuilder: (context , index )=> Container(
                            width: 50,
                            child: Image(
                                image: AssetImage('assets/images/${sponosor[index]}')
                              //  image: AssetImage('assets/images/1.png')

                        ),
                          ) ,
                          separatorBuilder: (context , index)=> SizedBox(width: 20,),
                        ),
                      ),
                    ),

                  ) ,

                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child:
                    Padding(
                      padding: const EdgeInsets.symmetric( horizontal: 25 ),

                      child: Container(
                        height: 100 ,
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: item2.length , itemBuilder: (context , index )=> Container(
                          width: 50,
                          child: Image(
                              image: AssetImage('assets/images/${item2[index]}')
                            //  image: AssetImage('assets/images/1.png')

                          ),
                        ) ,
                          separatorBuilder: (context , index)=> SizedBox(width: 20,),
                        ),
                      ),
                    ),

                  ) ,


                ],
              )


            ],

          ),
        ),
      ),
    );
  }

  Widget cardItem(ImageModel item)=>  Container(

    child:
    Card(
      elevation: 3,
      child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start ,
                  children: [
                    Container(
                      width: 200,
                        child: Image.network('${item.image}')),
                    Expanded(
                      child:
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('${item.month}' , style: TextStyle(color: btnColor , fontWeight: FontWeight.bold),),
                                Text('${item.day}' , style: TextStyle(color: btnColor , fontWeight: FontWeight.bold),),

                              ],
                            ),
                            SizedBox(width: 20,),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('${item.imgName}', style: TextStyle(color: defColor , fontWeight: FontWeight.bold),),
                                Text('${item.imgSubName}', style: TextStyle(color: defColor ),),
                              ],
                            ),



                          ],
                        ),
                      ),
                    ),

                  ],
                ),

              /*  ListTile(title: Text('${item.imgName}' , style: TextStyle(fontSize: 9),),
                  subtitle: Text('${item.imgSubName}' , style: TextStyle(fontSize: 9)),
                  leading: Column(
                    children: [
                      Text('${item.month}', style: TextStyle(fontSize: 9)),
                      Text('${item.day}', style: TextStyle(fontSize: 9)),
                    ],
                  ),
                ),*/
        //  ],

  // ),
    ),
  );
}
