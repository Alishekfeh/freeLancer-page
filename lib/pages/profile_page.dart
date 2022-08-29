import 'package:flutter/material.dart';
import 'package:freelancer_profile/model/icon_flutter.dart';

import '../model/theme_app.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 300,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.38,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/image/bg1.jpg"),
                            fit: BoxFit.fitWidth),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(36))),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                AppIcon.print,
                                color: Colors.black45,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(AppIcon.gift, color: Themes.bg1)),
                        ],
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 30, bottom: 40),
                        child: buildContainerInfo(context),
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                        Text(
                          "Contract",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "As of date 29.8.2022",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Main Tasks List",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "- Design and implement smartphone application \n "
                    "- Maintain app development tools \n "
                    "- Resolve reported bug \n "
                    "- Participate in end-to-end system integration system",
                    style: TextStyle(color: Colors.black54, height: 1.5),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Budget",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        "\$8,950",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 32,fontFamily: "Raleway"),
                      ),

                    ],
                  ),
                  Text(
                    "Patrick Barker",
                    style: TextStyle(fontSize: 24,fontFamily: "DancingScript"),

                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(onPressed: (){},
                  color: Themes.textColor.withAlpha(100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(AppIcon.paperclip,color: Themes.textColor,),
                      SizedBox(width: 12,),
                      Text("Upload Invoice ",style: TextStyle(
                        color: Themes.textColor
                      ),)
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }

  Container buildContainerInfo(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Themes.bg1,
                Themes.bg1,
                Themes.bg2,
                Themes.bg1,
                Themes.bg2,
              ])),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        height: 150,
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "DEW Project",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/image/usr2.jpg"),
                ),
              ],
            ),
            Text(
              "patrick Baker just send you a contract with all detailed information,",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              "sign in here",
              style: TextStyle(color: Colors.red.shade300),
            ),
            SizedBox(
              height: 12,
            )
          ],
        ),
      ),
    );
  }
}
