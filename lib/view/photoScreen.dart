import 'package:flutter/material.dart';
import 'package:gallery_ui/provider/gallery_provider.dart';
import 'package:provider/provider.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({Key? key}) : super(key: key);

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  GalleryProvider? providerF;
  GalleryProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF=Provider.of<GalleryProvider>(context,listen: false);
    providerT=Provider.of<GalleryProvider>(context,listen: true);
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Today",
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 1,
                      fontSize: 15,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.check_circle_outline,
                    color: Colors.black,
                    size: 18,
                  ),

                ],
              ),
            ),
            SizedBox(height: 5),

            SizedBox(
                height: 620,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,mainAxisSpacing: 2,crossAxisSpacing: 2),
                  itemBuilder: (context, index) => myview(index),
                  itemCount: providerF!.photoList.length,
                ))
          ],
        ),
      ),
    ));
  }
  Widget myview(int index) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context,'view',arguments: index);
      },
      child: Container(

        height: 100,
        width: 100,

        child: Image.asset("${providerF!.photoList[index]}",fit: BoxFit.fill,),
      ),
    );
  }

}
