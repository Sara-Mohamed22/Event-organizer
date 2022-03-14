import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/model/imageModel.dart';
import 'package:untitled1/shared/style/icon-Broken.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

import 'TicketTypeScreen.dart';

class InvitationDetail extends StatefulWidget {
  const InvitationDetail({Key? key}) : super(key: key);

  @override
  State<InvitationDetail> createState() => _InvitationDetailState();
}

class _InvitationDetailState extends State<InvitationDetail> {

  late YoutubePlayerController _controllerVideo;
  late TextEditingController _idController;
  late TextEditingController _seekToController;
  bool _isPlayerReady = false;
  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;
  double _volume = 100;
  bool _muted = false;

  String day = 'Day 01' ;

  //String videoURL = "https://www.youtube.com/watch?v=9_tZFByeaxA";
  String videoURL = "https://www.youtube.com/watch?v=gnAsLyGzh_4" ;
  String videoURL = "https://www.youtube.com/watch?v=9_tZFByeaxA";

  // final List<String> _ids2 = [
  //   't0Q2otsqC4I',
  // ];


  @override
  void initState() {
    super.initState();
    _controllerVideo = YoutubePlayerController(
     // initialVideoId: _ids2.first ,
      initialVideoId: YoutubePlayer.convertUrlToId(videoURL)! ,


      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);
    _idController = TextEditingController();
    _seekToController = TextEditingController();
    _videoMetaData = const YoutubeMetaData();
    _playerState = PlayerState.unknown;

  }

  void listener() {
    if (_isPlayerReady && mounted && !_controllerVideo.value.isFullScreen) {
      setState(() {
        _playerState = _controllerVideo.value.playerState;
        _videoMetaData = _controllerVideo.metadata;
      });
    }
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controllerVideo.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controllerVideo.dispose();
    _idController.dispose();
    _seekToController.dispose();
    super.dispose();
  }



    @override
    Widget build(BuildContext context) {

      Set<Marker> _marker = {};
      late GoogleMapController _controller;
      LatLng _position = LatLng(31.041455, 31.4178593);

      addMarker() {
        _marker.add(
            Marker(markerId: MarkerId('mId'),
                infoWindow:
                InfoWindow(title: 'xx', snippet: 'yy'),
                position: _position));
      }

      List<ImageModel> info = [
        ImageModel(
            image: 'https://img.freepik.com/free-photo/portrait-handsome-bearded-european-man-with-grey-hair-beard-smiles-pleasantly-looks-directly-front-being-good-mood-has-lucky-day-wears-spectacles-sweater-isolated-blue-wall_273609-44285.jpg?size=626&ext=jpg&ga=GA1.2.366265905.1646643516',
            imgName: 'Alice Jackson',
            imgSubName: 'Tempor bibendum',
        ),
        ImageModel(
            image: 'https://img.freepik.com/free-photo/cheerful-curly-business-girl-wearing-glasses_176420-206.jpg?size=626&ext=jpg&ga=GA1.2.366265905.1646643516',
            imgName: 'Andeera Evans',
            imgSubName: 'Porttitor diam',
            month: 'Feb',
            day: '06'),
        ImageModel(
            image: 'https://img.freepik.com/free-photo/portrait-happy-young-man_171337-21716.jpg?size=626&ext=jpg&ga=GA1.2.366265905.1646643516',
            imgName: 'Amanda Gilbert',
            imgSubName: 'Enos Etam',
            month: 'Feb',
            day: '06'),
        ImageModel(
            image: 'https://t3.ftcdn.net/jpg/02/67/28/70/240_F_267287089_EfjIf0FgT6AyPYjmKdQQIvjnbd7fgOMk.jpg',
            imgName: 'Dan Andrews',
            imgSubName: 'Sit Portttitor massa',
            month: 'Feb',
            day: '06'),

      ];

      List<String> sponosor = [
        '1.png',
        '2.png',
        '3.png',
        '4.png',
        '5.png',
      ];

      List<String> item2 = [
        '6.png',
        '2.png',
        '7.png',
        '8.png',
        '9.png',
      ];

      List<String> agenda =[
        'Day 01' ,
        'Day 02' ,
        'Day 03' ,
        'Day 04' ,
        'Day 05' ,
        'Day 06' ,
        'Day 07' ,
      ];

      List<String> galarys = [
        'https://img.freepik.com/free-photo/corporate-businessman-giving-presentation-large-audience_53876-101865.jpg?size=626&ext=jpg&ga=GA1.2.366265905.1646643516',
        'https://img.freepik.com/free-photo/rear-view-audience-listening-speakers-stage-conference-hall-seminar-meeting_41418-3371.jpg?size=626&ext=jpg&ga=GA1.2.366265905.1646643516' ,
        'https://img.freepik.com/free-photo/hotel-meeting_89411-87.jpg?size=626&ext=jpg&ga=GA1.2.366265905.1646643516',
        'https://img.freepik.com/free-photo/people-festival_1160-736.jpg?size=626&ext=jpg&ga=GA1.2.366265905.1646643516'
      ];

      addMarker();
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(65.0),
          child: AppBar(
            title: Image.asset('assets/images/log.png'),
            centerTitle: true,
           leading: IconButton(onPressed: (){
              Navigator.pop(context);
      },icon: Icon(Icons.arrow_back_ios_outlined)
          ),
        )),
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
                        height: 230,
                        width: double.infinity,
                        child: Image.network(
                          'https://t3.ftcdn.net/jpg/02/50/23/20/240_F_250232047_z9kCGCC2l3NShBNy1BJ8H3nVe9pWpnff.jpg',
                          fit: BoxFit.cover,),
                      ),

                      Container(
                        height: 230,
                        width: double.infinity,
                        color: Color(0xFF053F80).withOpacity(0.3),
                      ),

                      Row(
                        children: [
                          SizedBox(width: 20,),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Do the work with love .', style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),),

                                Text('Make a difference in the world .',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),),

                                SizedBox(height: 10,),

                                Text(
                                  'it is a long established fact that a reader  ',
                                  maxLines: 3,
                                  style: TextStyle(color: Colors.white),),

                                SizedBox(height: 20,),

                              ],
                            ),
                          ),


                        ],
                      )
                    ]
                ),
                Container(
                  height: 120,
                  color: btnColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.center ,
                    children: [

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Column(
                          children: [
                            Text(' 00 ', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Colors.white),),
                            Text('Days', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),)
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Column(
                          children: [
                            Text(' 12 ', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Colors.white),),
                            Text('Hour', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),)
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 1,
                        decoration: BoxDecoration(
                            color: Colors.white
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Column(
                          children: [
                            Text(' 01 ', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Colors.white),),
                            Text('Minutes', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),)
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Column(
                          children: [
                            Text(' 33 ', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Colors.white),),
                            Text('Second', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),)
                          ],
                        ),
                      ),

                    ],),),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text('Business Design', style: TextStyle(
                      color: defColor, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 30.0, horizontal: 20),
                  child: Text('it is a long established fact that a reader will'
                      ' be distracted by the readable content of'
                      ' a page when looking at its layout'),
                ),

                SizedBox(height: 10,),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
              child: YoutubePlayerBuilder(
                onExitFullScreen: () {
                  // The player forces portraitUp after exiting fullscreen. This overrides the behaviour.
                  SystemChrome.setPreferredOrientations(DeviceOrientation.values);
                },
                player:YoutubePlayer(
                  controller: _controllerVideo,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.blueAccent,
                  topActions: <Widget>[
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: Text(
                        _controllerVideo.metadata.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 25.0,
                      ),
                      onPressed: () {
                        print('Settings Tapped!');
                      },
                    ),
                  ],
                  onReady: () {
                    _isPlayerReady = true;
                  },
                  onEnded: (data) {
                  //  _controllerVideo.load(_ids2[(_ids2.indexOf(data.videoId) + 1) % _ids2.length]);

                  },
                ) ,
                builder: (context,player){
                     return Column(
                   children: <Widget>[
                        player
                          ],
                      );
                }
              ),
            ),



                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Text('Meet The Speakers', style: TextStyle(
                          color: defColor, fontWeight: FontWeight.bold),),
                      Spacer(),
                      TextButton(onPressed: (){}, child: Row(
                        children: [
                          Text('All Speakers ' , style: TextStyle(
                              color: btnColor , fontSize: 17),),
                          Icon(Icons.arrow_forward_ios_sharp , color: btnColor, size: 17,)

                        ],
                      ))
                    ],
                  ),
                ),

                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,

                  child:

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),

                    child: Container(
                      height: 200,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: info.length,
                        itemBuilder: (context, index) =>
                            InkWell(
                                onTap: () {},
                                child: cardItem(info[index])),
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 20,),
                      ),
                    ),
                  ),

                ),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Text('Event Agenda', style: TextStyle(
                          color: defColor, fontWeight: FontWeight.bold),),
                      Spacer(),
                      TextButton(onPressed: (){}, child: Row(
                        children: [
                          Text('Full Agenda ' , style: TextStyle(
                              color: btnColor , fontSize: 17),),
                          Icon(Icons.arrow_forward_ios_sharp , color: btnColor, size: 17,)

                        ],
                      ))
                    ],
                  ),
                ),

                Container(
                  color: HexColor('#FBFBFB'),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0 , horizontal: 20),
                    child: Column(children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Container(
                            height: 40,
                            child: ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: agenda.length,
                              itemBuilder: (context, index) =>
<<<<<<< HEAD
                                  InkWell(
                                    onTap: (){
                                      print('day');
                                    },
                                    child: Container(
                                      width: 80,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: agenda[index]== agenda.first ? btnColor : HexColor('#FBFBFB'),
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Center(child: Text('${agenda[index]}' ,
                                          style: TextStyle(
                                              color: agenda[index]== agenda.first  ? Colors.white : Colors.grey )))

                                      ),
                                  ),
=======
                                  Container(
                                    width: 80,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: agenda[index]== agenda.first ? btnColor : HexColor('#FBFBFB'),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text('${agenda[index]}' , style: TextStyle(color: agenda[index]== agenda.first  ? Colors.white : Colors.grey )))

                                    ),
>>>>>>> origin/event
                              separatorBuilder: (context, index) =>
                                  SizedBox(width: 20,),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 30,),
                      
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(child:
                        Row(children: [
                          Column(children: [
                            Text('9:00 - 11:00 AM '),
                            Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    color:  btnColor ,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(child: Text('HALL201' , style: TextStyle(color:  Colors.white , fontWeight: FontWeight.bold )))

                            ),


                          ],) ,
                          SizedBox(width: 15,),
                          CircleAvatar(radius: 30,
                            backgroundImage: NetworkImage('https://img.freepik.com/free-photo/portrait-handsome-bearded-european-man-with-grey-hair-beard-smiles-pleasantly-looks-directly-front-being-good-mood-has-lucky-day-wears-spectacles-sweater-isolated-blue-wall_273609-44285.jpg?size=626&ext=jpg&ga=GA1.2.366265905.1646643516'),
                          ),

                          SizedBox(width: 15,),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text('Micheal Deo' , style: TextStyle(color: defColor , fontWeight: FontWeight.bold)),
                            Text('Business Planner' , style: TextStyle(color: btnColor),)

                          ],),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Grow Your Business' , style: TextStyle(color: defColor , fontWeight: FontWeight.bold)),
                              Text('Sed ut perspiciatis undddddd\n ddddddddddddddd' ,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,)

                            ],)

                        ],),),
                      ) ,

                      SizedBox(height: 30,),

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(child:
                        Row(children: [
                          Column(children: [
                            Text('9:00 - 11:00 AM '),
                            Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    color:  btnColor ,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(child: Text('HALL201' , style: TextStyle(color:  Colors.white , fontWeight: FontWeight.bold )))

                            ),


                          ],) ,
                          SizedBox(width: 15,),
                          CircleAvatar(radius: 30,
                            backgroundImage: NetworkImage('https://img.freepik.com/free-photo/portrait-handsome-bearded-european-man-with-grey-hair-beard-smiles-pleasantly-looks-directly-front-being-good-mood-has-lucky-day-wears-spectacles-sweater-isolated-blue-wall_273609-44285.jpg?size=626&ext=jpg&ga=GA1.2.366265905.1646643516'),
                          ),

                          SizedBox(width: 15,),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Micheal Deo' , style: TextStyle(color: defColor , fontWeight: FontWeight.bold)),
                              Text('Business Planner' , style: TextStyle(color: btnColor),)

                            ],),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Grow Your Business' , style: TextStyle(color: defColor , fontWeight: FontWeight.bold)),
                              Text('Sed ut perspiciatis undddddd\n ddddddddddddddd' ,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,)

                            ],)

                        ],),),
                      ),
                      SizedBox(height: 30,),

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(child:
                        Row(children: [
                          Column(children: [
                            Text('9:00 - 11:00 AM '),
                            Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    color:  btnColor ,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(child: Text('HALL201' , style: TextStyle(color:  Colors.white , fontWeight: FontWeight.bold )))

                            ),


                          ],) ,
                          SizedBox(width: 15,),
                          CircleAvatar(radius: 30,
                            backgroundImage: NetworkImage('https://img.freepik.com/free-photo/portrait-handsome-bearded-european-man-with-grey-hair-beard-smiles-pleasantly-looks-directly-front-being-good-mood-has-lucky-day-wears-spectacles-sweater-isolated-blue-wall_273609-44285.jpg?size=626&ext=jpg&ga=GA1.2.366265905.1646643516'),
                          ),

                          SizedBox(width: 15,),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Micheal Deo' , style: TextStyle(color: defColor , fontWeight: FontWeight.bold)),
                              Text('Business Planner' , style: TextStyle(color: btnColor),)

                            ],),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Grow Your Business' , style: TextStyle(color: defColor , fontWeight: FontWeight.bold)),
                              Text('Sed ut perspiciatis undddddd\n ddddddddddddddd' ,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,)

                            ],)

                        ],),),
                      )
                    ],),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('Event Gallery', style: TextStyle(
                      color: defColor, fontWeight: FontWeight.bold),),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,

                    child:

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),

                      child: Container(
                        height: 200,
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: galarys.length,
                          itemBuilder: (context, index) =>
                              InkWell(
                                  onTap: () {},
                                  child: galarycardItem(galarys[index])),
                          separatorBuilder: (context, index) =>
                              SizedBox(width: 20,),
                        ),
                      ),
                    ),

                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('Exhabitors', style: TextStyle(
                      color: defColor, fontWeight: FontWeight.bold),),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child:
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),

                        child: Container(
                          height: 100,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: sponosor.length,
                            itemBuilder: (context, index) =>
                                Container(
                                  width: 50,
                                  child: Image(
                                      image: AssetImage(
                                          'assets/images/${sponosor[index]}')
                                    //  image: AssetImage('assets/images/1.png')

                                  ),
                                ),
                            separatorBuilder: (context, index) =>
                                SizedBox(width: 20,),
                          ),
                        ),
                      ),

                    ),

                    SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text('Partners & Sponsors', style: TextStyle(
                          color: defColor, fontWeight: FontWeight.bold),),
                    ),

                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child:
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),

                        child: Container(
                          height: 100,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: item2.length,
                            itemBuilder: (context, index) =>
                                Container(
                                  width: 50,
                                  child: Image(
                                      image: AssetImage(
                                          'assets/images/${item2[index]}')
                                  ),
                                ),
                            separatorBuilder: (context, index) =>
                                SizedBox(width: 20,),
                          ),
                        ),
                      ),

                    ),


                  ],
                ),

                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('Location', style: TextStyle(
                      color: defColor, fontWeight: FontWeight.bold),),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 20),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: GoogleMap(initialCameraPosition: CameraPosition(
                      target: _position,
                      zoom: 11.0,

                    ),
                      mapType: MapType.normal,
                      markers: _marker,
                      onMapCreated: (controller) {
                        _controller = controller;
                      },
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('Venue', style: TextStyle(
                      color: defColor, fontWeight: FontWeight.bold),),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: btnColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(children:
                      [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(children: [
                            Icon(Icons.add_location_sharp, color: Colors.white,
                              size: 28,),
                            SizedBox(width: 10,),
                            Text('Block 15', style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),)
                          ],),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(children: [
                            Icon(Icons.phone, color: Colors.white, size: 28,),
                            SizedBox(width: 10,),
                            Text('050874231', style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),)
                          ],),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(children: [
                            Icon(Icons.mail, color: Colors.white, size: 28,),
                            SizedBox(width: 10,),
                            Text('xx@gmail.com', style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),)
                          ],),
                        ),
                      ],),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('Event Ticket Prices', style: TextStyle(
                      color: defColor, fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 20,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          print('111');
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> TicketTypeScreen() ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Stack(
                            children: [
                              Stack(
                                children: [
                                 Padding(
                                   padding: const EdgeInsets.all(6.0),
                                   child: Container(
                                    //  width: 150,
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
                                              Text('Code Clouders', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
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
                                    SizedBox(height: 222,),

                                    CircleAvatar(radius: 8, backgroundColor: Colors.white,),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      ) ,
                      GestureDetector(
                        onTap: (){
                          print('222');
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> TicketTypeScreen() ));

                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Stack(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Container(
                                      //  width: 150,
                                      decoration: BoxDecoration(color: defColor ,
                                          borderRadius: BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 25.0),

                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 3.0),
                                              child: Text('Fees\$' ,
                                                style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold ),),
                                            ),

                                            SizedBox(width: 6,),

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
                                                Text('Academic Business', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
                                                Text('Development', style: TextStyle(color: Colors.white ,
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
                                    SizedBox(height: 222,),

                                    CircleAvatar(radius: 8, backgroundColor: Colors.white,),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      ) ,


                    ],
                  ),
                ) ,




              ],

            ),
          ),
        ),





      );
    }

    Widget cardItem(ImageModel item) =>
        Container(

          child:
          Card(
            elevation: 3,
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 170,
                    height: 100,
                    child: Image.network('${item.image}' , fit: BoxFit.cover,)),
                Expanded(
                  child:
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [

                      /*  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${item.month}', style: TextStyle(
                                color: btnColor, fontWeight: FontWeight.bold),),
                            Text('${item.day}', style: TextStyle(
                                color: btnColor, fontWeight: FontWeight.bold),),

                          ],
                        ), */

                        SizedBox(width: 20,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${item.imgName}', style: TextStyle(
                                color: btnColor, fontWeight: FontWeight.bold),),
                            Text('${item.imgSubName}',
                              style: TextStyle(color: defColor),),
                            Text('Congo',
                              style: TextStyle(color: defColor),),
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

  Widget galarycardItem(String item)=> Container(

    child:
    Card(
      elevation: 3,
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 170,
              height: 190,
              child: Image.network('${item}' , fit: BoxFit.cover,)),


        ],
      ),
    ),
  );

  }



