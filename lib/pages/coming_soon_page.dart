import 'package:flutter/material.dart';
import 'package:netflix/json/coming_soon_json.dart';

class ComingSoonPage extends StatefulWidget {
  const ComingSoonPage({super.key});

  @override
  State<ComingSoonPage> createState() => _ComingSoonPageState();
}

class _ComingSoonPageState extends State<ComingSoonPage> {
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
      title:Text(
          "Coming Soon",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ) ,
      actions: [
        IconButton(
          icon: Icon(Icons.collections_bookmark,size: 28,color: Colors.white,),
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
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15,left: 20,right: 20),

             child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                          Icons.notifications_none_outlined,
                        size: 28,
                        color: Colors.white.withOpacity(0.9),
                      ),
                      SizedBox(width:15 ,),
                      Text(
                          "Notifications",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 22,
                    color: Colors.white.withOpacity(0.9),
                  ),
                ],
              ),
          ),
          SizedBox(height: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(comingSoonJson.length, (index){
              return Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 220,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(comingSoonJson[index]['img']),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.2),
                            ),
                          ),
                        ],
                      ),
                    ),
                    comingSoonJson[index]['duration']
                        ? Column(
                      children: [
                        SizedBox(height: 20,),
                        Stack(
                          children: [
                            Container(
                              height: 2.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey.withOpacity(0.7),
                              ),
                            ),
                            Container(
                              width: size.width*0.34,
                              height: 2.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.red.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                        :Container(),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(comingSoonJson[index]['title_img'],
                            width: 120,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Icon(
                                      Icons.notifications_none_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "Remind me",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(width:30 ,),
                              Column(
                                children: [
                                  Icon(
                                    Icons.info_outline,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "Info",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: EdgeInsets.only(left: 10,right: 10),
                    child: Text(comingSoonJson[index]['date'],style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),)
                    ),
                    SizedBox(height: 15,),
                    Padding(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        child: Text(comingSoonJson[index]['title'],style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),)
                    ),
                    SizedBox(height: 5,),
                    Padding(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        child: Text(comingSoonJson[index]['description'],style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          height: 1.4,
                        ),)
                    ),
                    SizedBox(height: 10,),
                    Padding(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        child: Text(comingSoonJson[index]['type'],style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          height: 1.4,
                        ),)
                    ),

                  ],
                ),
              );

            }),

          ),
        ],
      ),
    );
   }

}
