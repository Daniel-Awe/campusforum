import 'package:flutter/material.dart';
//数据
import '../Data/personaldata.dart';

class ArticleComments extends StatefulWidget {
  final double? size;

  ArticleComments({this.size});

  @override
  _ArticleCommentsState createState() => _ArticleCommentsState();
}

class _ArticleCommentsState extends State<ArticleComments> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Icon(
        IconData(0xe6ad,fontFamily: 'MyIcons'),
        color: Colors.grey,
        weight: 900,
        size: widget.size!=null?widget.size: 22,
      ),
    );
  }
}