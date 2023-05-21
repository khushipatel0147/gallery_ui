import 'package:flutter/material.dart';
import 'package:gallery_ui/provider/gallery_provider.dart';
import 'package:gallery_ui/view/homeScreen.dart';
import 'package:gallery_ui/view/pageviewScreen.dart';
import 'package:gallery_ui/view/spleshScreen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => GalleryProvider(),)
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => SpleshScreen(),
        'home':(context) => Homepage(),
        'view':(context) => PageviewScreen(),
      },
    ),
  ));
}