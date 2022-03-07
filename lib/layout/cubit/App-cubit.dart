import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/layout/cubit/App-state.dart';
import 'package:untitled1/module/homePage/myHome.dart';
import 'package:untitled1/module/notify/notifyScreen.dart';


class AppCubit extends Cubit<AppStates>
{
  AppCubit() : super(AppInitializeState());

  static AppCubit  get(context) => BlocProvider.of(context);

  List<Widget> screens = [ HomePage() , NotifyScreen() ];
  int currentIndex =0 ;

  changeBottomNav(int index)
  {
    currentIndex = index ;
    emit(ChangeBottomNav());
  }


}
