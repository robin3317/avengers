import 'package:flutter/material.dart';

class Avenger extends StatelessWidget {
  final String name;
  final String imgSrc;
  Avenger(this.name, this.imgSrc);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage(imgSrc);
    Image image = Image(
      image: assetImage,
      width: double.infinity,
    );
    return Container(
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Text(
              name,
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 30),
            child: image,
          ),
        ],
      ),
    );
  }
}
