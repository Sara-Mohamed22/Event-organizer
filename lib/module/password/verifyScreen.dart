
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/layout/homeScreen.dart';
import 'package:untitled1/shared/drawer.dart';
class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var formKey = GlobalKey<FormState>();
    var oneController = TextEditingController();
    var twoController = TextEditingController();
    var threeController = TextEditingController();
    var fourController = TextEditingController();



    return Scaffold(
      drawer: createDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          title: Text('Enter Verification Code' , style: TextStyle(fontSize: 17),),
          centerTitle: true,
        ),),
      body:  Container(
        decoration:  BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bk.png'),
              fit: BoxFit.cover,

            )
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child:
              Form(
                key: formKey ,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start ,
                  children: [

                    SizedBox(height: 210,),


                    //SizedBox(height: 20,),
                    Column(
                       children: [
                         Text('Please Enter the OTP Verification Code sent to your phone ' ,
                           style: TextStyle(fontSize: 13, color: defColor), maxLines: 1,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text(' number ',style: TextStyle(fontSize: 13, color: defColor)),
                             Text('+1254789',style: TextStyle(fontSize: 13, color: btnColor ,
                                 fontWeight: FontWeight.bold)),
                           ],
                         )
                       ],
                    ),
                    SizedBox(height: 25,),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            child: TextFormField(
                                controller: oneController ,
                                keyboardType: TextInputType.visiblePassword ,
                                validator: (value){
                                  if(value!.isEmpty) return 'Please enter Code ' ;
                                },
                                onFieldSubmitted: (value) {
                                  if (formKey.currentState!.validate()) {

                                  }
                                },
                                decoration: InputDecoration(

                                  border: OutlineInputBorder(),
                                  label: Center(child: Text('_')),

                                )),
                          ),
                        ),
                        SizedBox(width: 30,),
                        Expanded(
                          child: Container(
                            height: 50,
                            child: TextFormField(
                                controller: twoController ,
                                keyboardType: TextInputType.visiblePassword ,
                                validator: (value){
                                  if(value!.isEmpty) return 'Please enter Code ' ;
                                },
                                onFieldSubmitted: (value) {
                                  if (formKey.currentState!.validate()) {

                                  }
                                },
                                decoration: InputDecoration(

                                  border: OutlineInputBorder(),
                                  label: Center(child: Text('_' ,)),

                                )),
                          ),
                        ),
                        SizedBox(width: 30,),
                        Expanded(
                          child: Container(
                            height: 50,
                            child: TextFormField(
                                controller: threeController ,
                                keyboardType: TextInputType.visiblePassword ,
                                validator: (value){
                                  if(value!.isEmpty) return 'Please enter Code ' ;
                                },
                                onFieldSubmitted: (value) {
                                  if (formKey.currentState!.validate()) {

                                  }
                                },
                                decoration: InputDecoration(

                                  border: OutlineInputBorder(),
                                  label: Center(child: Text('_' ,)),

                                )),
                          ),
                        ),
                        SizedBox(width: 30,),
                        Expanded(
                          child: Container(
                            height: 50,
                            child: TextFormField(
                                controller: fourController ,
                                keyboardType: TextInputType.visiblePassword ,
                                validator: (value){
                                  if(value!.isEmpty) return 'Please enter Code ' ;
                                },
                                onFieldSubmitted: (value) {
                                  if (formKey.currentState!.validate()) {

                                  }
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Center(child: Text('_' , )),

                                )),
                          ),
                        ),


                      ],
                    ) ,
                    SizedBox(height: 30,),

                    Container(

                      width: double.infinity,
                      height: 45,

                      child: MaterialButton(
                        shape:  RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        color: btnColor,
                        onPressed: ()
                        {
                          // if(formKey.currentState!.validate())
                          // {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen() ));

                          //}

                        }
                        ,
                        child: Text('Verify' ,
                          style: TextStyle(
                              color: Colors.white ,
                              fontWeight: FontWeight.w400,
                              fontSize: 19
                          ),),),

                    ),

                    SizedBox(height: 10,),

                    TextButton(
                        onPressed: ()
                        {
                         // Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));

                        }, child: Center(child: Text('Resend Verification Code' , style: TextStyle(color: defColor),)))

                  ],
                ),
              ),
              // ]
            ),
          ),
        ),
      ),


    );

  }
}
