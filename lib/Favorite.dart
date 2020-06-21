import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget{
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget>{
  bool _isFavorited = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 30,
      height: 60,
      child: IconButton(
        onPressed: (){
          setState(() {
            favoriteClicked();
          });
        },
        icon:Icon(
          _isFavorited?Icons.favorite_border:Icons.favorite,
          color: _isFavorited?Colors.white:Colors.red,
          size: 25,
        ),
      ),
    );
  }

  void favoriteClicked() {
    setState(() {
      _isFavorited=!_isFavorited;
    });
  }
}