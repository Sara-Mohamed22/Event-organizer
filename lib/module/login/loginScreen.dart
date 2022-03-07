import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/layout/homeScreen.dart';
import 'package:untitled1/module/password/forgetScreen.dart';
import 'package:untitled1/module/registerScreen/registerScreen.dart';
import 'package:untitled1/shared/drawer.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var usernameController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
      drawer: createDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          title: Text('Log In'),
          centerTitle: true,
        ),
      ),
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

                        Container(
                          height: 60,
                          child: TextFormField(
                            controller: usernameController ,
                            keyboardType: TextInputType.emailAddress ,
                            validator: (value){
                              if(value!.isEmpty) return 'Please enter your email address or phone' ;
                            },
                            decoration: InputDecoration(
                               border: OutlineInputBorder(),
                                label: Text('Email / Phone *')

                            ),
                          ),
                        ),

                        SizedBox(height: 20,),

                        Container(
                          height: 60,
                          child: TextFormField(
                              controller: passwordController ,
                              keyboardType: TextInputType.visiblePassword ,
                              validator: (value){
                                if(value!.isEmpty) return 'Please enter your password' ;
                              },
                              onFieldSubmitted: (value) {
                                if (formKey.currentState!.validate()) {

                                }
                              },
                              decoration: InputDecoration(

                                  border: OutlineInputBorder(),
                                  label: Text('Password *' ,),

                              )),
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
                                if(formKey.currentState!.validate())
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                                }

                              }
                              ,
                              child: Text('Log In' ,
                                style: TextStyle(
                                    color: Colors.white ,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 19
                                ),),),

                          ),


                        SizedBox(height: 15,),

                        Column(
                          children: [
                            TextButton(
                                onPressed: ()
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgetPassScreen()));

                                }, child: Text('Forget Password?' ,
                              style: TextStyle(color: Colors.indigo ,
                                  fontWeight: FontWeight.w300),)),

                            SizedBox(height: 5,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Don\'t have password ?' ,
                                  style: TextStyle(
                                      color: Colors.indigo ,
                                      fontWeight:FontWeight.w600 ),),
                                TextButton(
                                    onPressed: ()
                                    {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));

                                    }, child: Text('Sign Up' , style: TextStyle(color: btnColor),))
                              ],),
                          ],
                        )
                      ],
                    ),
                  ),
              // ]
                ),
              ),
            ),
      ),

     // )
    );
  }



  }

