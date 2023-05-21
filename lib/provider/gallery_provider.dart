import 'package:flutter/material.dart';

class GalleryProvider extends ChangeNotifier {
  int give = 0;

  void newvalue(int value) {
    give = value;
    notifyListeners();
  }

  List photoList = [
    'assets/images/1.jpeg',
    'assets/images/2.jpg',
    'assets/images/3.jpeg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/7.jpeg',
    'assets/images/8.jpg',
    'assets/images/9.jpg',
    'assets/images/10.jpg',
    'assets/images/11.jpg',
    'assets/images/12.jpeg',
    'assets/images/13.jpeg',
    'assets/images/14.jpg',
    'assets/images/15.jpg',
    'assets/images/16.jpg',
    'assets/images/17.jpg',
    'assets/images/18.jpg',
    'assets/images/19.jpg',
    'assets/images/20.jpg',
    'assets/images/21.jpg',
    'assets/images/22.jpeg',
    'assets/images/23.jpg',
    'assets/images/24.jpg',
    'assets/images/25.jpeg',
    'assets/images/26.jpg',
    'assets/images/27.jpg',
    'assets/images/28.jpeg',
    'assets/images/29.jpg',
    'assets/images/30.jpg',
    'assets/images/31.jpeg',
    'assets/images/32.jpg',
    'assets/images/33.jpg',
    'assets/images/34.jpeg',
    'assets/images/35.jpg',
    'assets/images/36.jpg',
    'assets/images/37.jpg',
    'assets/images/38.jpg',
    'assets/images/39.jpg',
    'assets/images/40.jpg',
    'assets/images/41.jpg',
    'assets/images/42.jpg',
    'assets/images/43.jpg',
    'assets/images/44.jpg',
    'assets/images/45.jpg',
    'assets/images/46.jpg',
    'assets/images/47.jpg',
    'assets/images/48.jpg',
    'assets/images/49.jpg',
    'assets/images/50.jpg',
  ];
  List libraryPhoto=[
    'assets/images/1.jpeg',
    'assets/images/2.jpg',
    'assets/images/3.jpeg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
  ];

  int sliderindex=0;
  void changeIndex(int index)
  {
    sliderindex=index;
    notifyListeners();
  }
}
