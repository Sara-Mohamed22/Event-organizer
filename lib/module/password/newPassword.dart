import 'package:flutter/material.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/shared/drawer.dart';

import 'verifyScreen.dart';
class NewPassScreen extends StatelessWidget {
  const NewPassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var formKey = GlobalKey<FormState>();
    var passwordController = TextEditingController();

    return Scaffold(
      drawer: createDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          title: Text('New Password'),
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

                    Container(
                      height: 60,
                      child: TextFormField(
                          controller: passwordController ,
                          keyboardType: TextInputType.visiblePassword ,
                          validator: (value){
                            if(value!.isEmpty) return 'Please enter your phone Number' ;
                          },
                          onFieldSubmitted: (value) {
                            if (formKey.currentState!.validate()) {

                            }
                          },
                          decoration: InputDecoration(

                            border: OutlineInputBorder(),
                            label: Text('Enter new Password *' ,),

                          )),
                    ) ,
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
                            label: Text('Confirm Password *' ,),

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
                         // if(formKey.currentState!.validate())
                        //  {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> VerifyScreen()));
                        //  }

                        }
                        ,
                        child: Text('Confirm' ,
                          style: TextStyle(
                              color: Colors.white ,
                              fontWeight: FontWeight.w400,
                              fontSize: 19
                          ),),),

                    ),



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
