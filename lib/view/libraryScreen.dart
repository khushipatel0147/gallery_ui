import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/gallery_provider.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  GalleryProvider? providerF;
  GalleryProvider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of(context, listen: false);
    providerT = Provider.of(context, listen: true);
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
                itemCount: providerF!.libraryPhoto.length,
                itemBuilder: (context, index, realIndex) {
                  return ClipRRect(borderRadius: BorderRadius.circular(20),
                      child: Image.asset("${providerF!.libraryPhoto[index]}",height: 700,width: 650,fit: BoxFit.cover,));
                },
                options: CarouselOptions(enlargeCenterPage: true, autoPlay: true,onPageChanged: (index, reason) {
                  providerF!.changeIndex(index);
                },)),
            SizedBox(height: 15),
            CarouselIndicator(
              count: providerF!.libraryPhoto.length,
              activeColor: Colors.black,
              index: providerT!.sliderindex,
              color: Colors.black12,

            )
          ],
        ),
      ),
    ));
  }
}
