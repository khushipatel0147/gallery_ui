import 'package:flutter/material.dart';
import 'package:gallery_ui/provider/gallery_provider.dart';
import 'package:gallery_ui/view/libraryScreen.dart';
import 'package:gallery_ui/view/pageviewScreen.dart';
import 'package:gallery_ui/view/photoScreen.dart';
import 'package:gallery_ui/view/searchScreen.dart';
import 'package:gallery_ui/view/sharingscreen.dart';
import 'package:gallery_ui/view/spleshScreen.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  GalleryProvider? providerF;
  GalleryProvider? providerT;


  @override
  Widget build(BuildContext context) {
    providerF = Provider.of(context, listen: false);
    providerT = Provider.of(context, listen: true);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Center(
          child: Container(
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "G",
                  style: TextStyle(color: Colors.blue),
                ),
                Text(
                  "o",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text(
                  "o",
                  style: TextStyle(
                    color: Colors.yellow,
                  ),
                ),
                Text(
                  "g",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                Text(
                  "l",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                Text(
                  "e",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "photos",
                  style: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'popins',
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage("assets/images/person.jpg"),
          ),
          SizedBox(width: 10),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        fixedColor: Colors.black,
        elevation: 0,
        currentIndex: providerT!.give,
        onTap: (value) {
          providerF!.newvalue(value);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.photo,
              ),
              label: "Photos"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.group,
              ),
              label: "Sharing"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.equalizer,
              ),
              label: "Library"),
        ],
      ),
          backgroundColor: Colors.white,

          body:providerT!.give==0?PhotoScreen():providerT!.give==1?SearchScreen():providerT!.give==2?SharingScreen():LibraryScreen(),
        ));
  }
}
