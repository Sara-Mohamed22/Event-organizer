
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled1/constant.dart';

   createDrawer()=> Drawer(
     child: ListView(
       padding: EdgeInsets.zero,
       children: [
         const DrawerHeader(
           decoration: BoxDecoration(
             color: Color(0xFF053F80),
           ),
           child: Text('Drawer Header'),
         ),
         ListTile(
           title: const Text('Item 1'),
           onTap: () {
           },
         ),
         ListTile(
           title: const Text('Item 2'),
           onTap: () {

           },
         ),
       ],
     ),
   );