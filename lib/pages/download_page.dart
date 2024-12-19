import 'package:flutter/material.dart';

class DownloadsPage extends StatefulWidget {
  const DownloadsPage({super.key});

  @override
  State<DownloadsPage> createState() => _DownloadsPageState();
}

class _DownloadsPageState extends State<DownloadsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: getAppBar(),
      body: getBody(),
    );
  }
  PreferredSizeWidget getAppBar(){
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Text(
          "My Downloads",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
              Icons.collections_bookmark,
            size: 28,
          ),
          onPressed: (){},
        ),
        IconButton(
          icon: Image.asset(
              "lib/assets/profile.png",
            width: 26,
            height: 26,
            fit: BoxFit.cover,
          ),
          onPressed: (){},
        ),
      ],
    );
  }
  Widget getBody(){
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
          ),
          child: Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
            child: Row(
              children: [
                Icon(
                    Icons.info_outline,
                  color: Colors.white,
                ),
                SizedBox(width: 10,),
                Text(
                    "Smart Downloads",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 3,),
                Text(
                    "ON",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )

              ],
            ),
          ),
        ),
      SizedBox(height: 60,),
        Column(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                    Icons.file_download,
                  size: 80,
                  color: Colors.grey.withOpacity(0.3),
                ),

              ),
            ),
            SizedBox(height: 30,),
            Text(
                "Never be Without Netflix",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20,),
            Padding(
            padding: EdgeInsets.only(left: 40,right: 40),
           child:  Text(
              "Download shows and movies so you'll never be without something to watch even offline",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                height: 1.4,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
    ),
            SizedBox(height: 30,),
            Container(
              height: 50,
              width: size.width * 0.85,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                    "See What You Can Download",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
