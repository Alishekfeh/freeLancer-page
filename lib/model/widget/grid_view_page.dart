import 'package:flutter/material.dart';
class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key, required this.assets, required this.title}) : super(key: key);
final String assets,title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(assets),
              fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(16)),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          )),
    ) ;
  }
}
