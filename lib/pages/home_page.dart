import 'package:flutter/material.dart';
import 'package:freelancer_profile/model/icon_flutter.dart';
import 'package:freelancer_profile/model/widget/grid_view_page.dart';
import 'package:freelancer_profile/pages/profile_page.dart';

import '../model/theme_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            AppIcon.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ProfilePage()));
              },
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/image/usr1.jpg"),
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(right: 10, left: 10, top: 10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Text.rich(TextSpan(
                text: "find",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                      text: "  ios Developer",
                      style: TextStyle(color: Themes.textColor))
                ])),
            buildStackImageAndButton(context),
            SizedBox(height: 0,),
            buildTextField(),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Featured Developers",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "View More",
                    style: TextStyle(color: Themes.textColor),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16,),
            GridView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.6,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16),
              children: [
                GridViewWidget(
                    assets: "assets/image/usr4.jpg", title: "shane west"),
                GridViewWidget(
                    assets: "assets/image/usr2.jpg", title: "shane west"),
                GridViewWidget(
                    assets: "assets/image/usr3.jpg", title: "shane west"),
                GridViewWidget(
                    assets: "assets/image/usr4.jpg", title: "shane west"),
              ],
            ),
            SizedBox(height: 16,),
            Container(
              padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/image/bg2.jpg"), fit: BoxFit.fitWidth),
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Tips to hire right person",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text(
                      "why you need on ios developer and what you will get from hired contractor",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget buildStackImageAndButton(BuildContext context) {
    return Stack(
            children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    "assets/image/bg.png",
                    height: 200,
                    width: 200,
                  )),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(
                        "why you need on ios developer and what you will get from hired contractor",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                    SizedBox(height: 8,),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "About Position",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Themes.textColor),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24))),
                      ),
                    )
                  ],
                ),
              )
            ],
          );
  }

  Widget buildTextField() {
    return TextField(
            decoration: InputDecoration(
                hintText: "search by skills",
                hintStyle: TextStyle(
                    color: Colors.black54, fontStyle: FontStyle.italic),
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.black54,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide(color: Colors.black38),
                    gapPadding: 1),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 12)),
          );
  }
}
