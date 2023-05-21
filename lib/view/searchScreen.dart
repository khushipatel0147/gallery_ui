import 'package:flutter/material.dart';
import 'package:gallery_ui/provider/gallery_provider.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  GalleryProvider? providerF;
  GalleryProvider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of(context, listen: false);
    providerT = Provider.of(context, listen: true);
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(
                            Icons.search,
                            size: 20,
                            color: Colors.black38,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Search Birthday",
                            style: TextStyle(fontSize: 15, color: Colors.black38),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black26)),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(
                            Icons.cloud_upload_outlined,
                            size: 20,
                            color: Colors.blue.shade800,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Turn on backup to improve search",
                            style: TextStyle(fontSize: 15, color: Colors.black38),
                          ),
                          SizedBox(width: 30),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Colors.black38,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        SizedBox(width: 8),
                        Text(
                          "People",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              letterSpacing: 1),
                        ),
                        Spacer(),
                        Text(
                          "View all",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              letterSpacing: 1),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      itemBuilder: (context, index) {
                        return Container(
                          alignment: Alignment.center,
                          height: 70,
                          width: 70,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage:
                                AssetImage("${providerF!.photoList[index]}"),
                            radius: 40,
                          ),
                        );
                      },
                      itemCount: providerF!.photoList.length,
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        SizedBox(width: 8),
                        Text(
                          "Places",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              letterSpacing: 1),
                        ),
                        Spacer(),
                        Text(
                          "View all",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              letterSpacing: 1),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(5),
                          height: 150,
                          width: 150,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset("${providerF!.photoList[index]}",
                                  fit: BoxFit.cover)),
                        );
                      },
                      itemCount: providerF!.photoList.length,
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        SizedBox(width: 8),
                        Text(
                          "Documents",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              letterSpacing: 1),
                        ),
                        Spacer(),
                        Text(
                          "View all",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              letterSpacing: 1),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(5),
                          height: 150,
                          width: 150,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset("${providerF!.photoList[index]}",
                                  fit: BoxFit.cover)),
                        );
                      },
                      itemCount: providerF!.photoList.length,
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        SizedBox(width: 8),
                        Text(
                          "Things",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              letterSpacing: 1),
                        ),
                        Spacer(),
                        Text(
                          "View all",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              letterSpacing: 1),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(5),
                          height: 150,
                          width: 150,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset("${providerF!.photoList[index]}",
                                  fit: BoxFit.cover)),
                        );
                      },
                      itemCount: providerF!.photoList.length,
                    ),
                  ),
                ],
              ),
            )));
  }
}
