import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled1/shared/splash-screen.dart';
import 'constant.dart';
import 'layout/cubit/App-cubit.dart';
import 'observer.dart';

void main()
{
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();

  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> AppCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          //primarySwatch: defColor,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const  Color(0xFF053F80),
            // secondary: const Color(0xFFFFC196),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: btnColor
          )
        ),

        home: SplashScreen(),
      ),
    );
  }
}
