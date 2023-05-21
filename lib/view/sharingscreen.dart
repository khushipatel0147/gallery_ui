import 'package:flutter/material.dart';
import 'package:gallery_ui/provider/gallery_provider.dart';
import 'package:provider/provider.dart';

class SharingScreen extends StatefulWidget {
  const SharingScreen({Key? key}) : super(key: key);

  @override
  State<SharingScreen> createState() => _SharingScreenState();
}

class _SharingScreenState extends State<SharingScreen> {
  GalleryProvider? providerF;
  GalleryProvider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of(context, listen: false);
    providerT = Provider.of(context, listen: true);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade50),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(
                        Icons.book_rounded,
                        color: Colors.black,
                        size: 15,
                      ),
                      SizedBox(width: 2),
                      Text(
                        "Create shared album",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'popins',
                            fontSize: 11,
                            letterSpacing: 1),
                      ),
                      SizedBox(width: 2),
                    ],
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade50),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(
                        Icons.share,
                        color: Colors.black,
                        size: 15,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Share with partners",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'popins',
                            fontSize: 12,
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Albums and Memories",
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 1,
                      fontFamily: 'popins',
                      fontSize: 17),
                ),
                Spacer(),
                Text(
                  "View all",
                  style: TextStyle(
                      color: Colors.blue,
                      letterSpacing: 1,
                      fontFamily: 'popins',
                      fontSize: 17),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                        height: 150,
                        width: 150,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, 'page',
                                      arguments: index);
                                },
                                child: Image.asset(
                                  "${providerF!.photoList[index]}",
                                  fit: BoxFit.cover,
                                ))));
                  },
                  itemCount: providerF!.photoList.length),
            ),
            SizedBox(height: 20),
            Text(
              "Conversations",
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 1,
                  fontFamily: 'popins',
                  fontSize: 17),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("${providerF!.photoList[10]}"),
                ),
                SizedBox(width: 15),
                Text(
                  "KK",
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 1,
                      fontFamily: 'popins',
                      fontSize: 17),
                ),
                Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "${providerF!.photoList[11]}",
                        fit: BoxFit.cover,
                      )),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("${providerF!.photoList[12]}"),
                ),
                SizedBox(width: 15),
                Text(
                  "Teddudu",
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 1,
                      fontFamily: 'popins',
                      fontSize: 17),
                ),
                Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "${providerF!.photoList[13]}",
                        fit: BoxFit.cover,
                      )),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("${providerF!.photoList[14]}"),
                ),
                SizedBox(width: 15),
                Text(
                  "Teddy",
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 1,
                      fontFamily: 'popins',
                      fontSize: 17),
                ),
                Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "${providerF!.photoList[15]}",
                        fit: BoxFit.cover,
                      )),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("${providerF!.photoList[10]}"),
                ),
                SizedBox(width: 15),
                Text(
                  "Motu",
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 1,
                      fontFamily: 'popins',
                      fontSize: 17),
                ),
                Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "${providerF!.photoList[8]}",
                        fit: BoxFit.cover,
                      )),
                )
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      )),
    ));
  }
}
