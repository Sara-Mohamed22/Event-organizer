
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/layout/cubit/App-state.dart';
import 'package:untitled1/shared/style/icon-Broken.dart';

import 'cubit/App-cubit.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 AppCubit cubit = AppCubit.get(context);

    return BlocConsumer<AppCubit , AppStates>(
      listener: (context , state){},
      builder: (context , state){
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(65.0),
            child: AppBar(
              automaticallyImplyLeading: false,
              title: Image.asset('assets/images/log.png'),
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child:
                  Icon(IconBroken.Logout , size: 30,),
                )
              ],
            ),
          ),

          body: cubit.screens[cubit.currentIndex ],

          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentIndex ,
            items: [
            //  BottomNavigationBarItem(icon: Icon(Icons.home , size: 32 , ) , label: ''),
              BottomNavigationBarItem(icon: Icon(IconBroken.Home , size: 32 , ) , label: ''),

              //  BottomNavigationBarItem(icon: Icon(Icons.notifications , size: 32 ,) , label: ''),
              BottomNavigationBarItem(icon: Icon(IconBroken.Notification ,size: 32 , ), label: ''),


            ],
            onTap: (index)
            {
               cubit.changeBottomNav(index);
            },
          ),

        );
      },
    );
  }
}
