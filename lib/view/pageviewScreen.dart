import 'package:flutter/material.dart';
import 'package:gallery_ui/provider/gallery_provider.dart';
import 'package:provider/provider.dart';

class PageviewScreen extends StatefulWidget {
  const PageviewScreen({Key? key}) : super(key: key);

  @override
  State<PageviewScreen> createState() => _PageviewScreenState();
}

class _PageviewScreenState extends State<PageviewScreen> {


    GalleryProvider? providerF;
    GalleryProvider? providerT;
  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    providerF = Provider.of(context, listen: false);
    providerT = Provider.of(context, listen: true);
    PageController controller=PageController(initialPage: index);
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: InkWell(onTap: () {
          Navigator.pop(context);
        },
            child: Icon(Icons.arrow_back_outlined,size: 25,)),
        actions: [
          Icon(Icons.cloud_download,size: 25,),
          SizedBox(width: 18),
          Icon(Icons.star_border_outlined,size: 25,),
          SizedBox(width: 10),
          Icon(Icons.more_vert,size: 25,),
          SizedBox(width: 10),
        ],
      ),
     bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed,
       unselectedItemColor: Colors.white,
       backgroundColor: Colors.black,
       elevation: 0,
       selectedItemColor: Colors.white,
       items: [
         BottomNavigationBarItem(icon:Icon(Icons.share) ,label: "Share",),
         BottomNavigationBarItem(icon:Icon(Icons.tune) ,label: "Edit"),
         BottomNavigationBarItem(icon:Icon(Icons.center_focus_strong) ,label: "Lens"),
         BottomNavigationBarItem(icon:Icon(Icons.delete) ,label: "Delete"),
       ],
     ),
      body: PageView.builder(
        controller: controller,
        itemBuilder: (context, index) {
        return Image.asset("${providerF!.photoList[index]}");
      },)
      ),
    );
  }
}
