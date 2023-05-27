import 'package:flutter/material.dart';
//数据
import '../Data/personaldata.dart';

class ArticleScreen extends StatefulWidget {
  final Map<String, dynamic> article;
  final double? size;

  ArticleScreen({required this.article, this.size});

  @override
  _ArticleScreenState createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  bool _liked = false;

  @override
  void initState() {
    super.initState();

    // 判断是否已经点赞
    for (var like in admin[0]['likes']) {
      if (like['title'] == widget.article['title']) {
        setState(() {
          _liked = true;
        });
        break;
      }
    }
  }

  void _toggleLike() {
    setState(() {
      // 判断是否已经点赞
      if (_liked) {
        // 取消点赞
        admin[0]['likes'].removeWhere((like) => like['title'] == widget.article['title']);
        _liked = false;
      } else if(_liked == false) {
        // 点赞
        admin[0]['likes'].add({
          'title': '${widget.article['title']}',
          'text': '${widget.article['text']}',
          'name': '${widget.article['name']}',
          'time': '${widget.article['time']}',
          'comments': '${widget.article['comments']}',
          'likes': '${widget.article['likes']}',
          'image': '${widget.article['image']}',
          'tags': '${widget.article['tags']}',
        });
        _liked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleLike,
      child: Icon(
        _liked ? Icons.favorite : IconData(0xe61b,fontFamily: 'MyIcons') ,
        color: _liked ? Colors.red : Colors.grey,
        size: widget.size!=null?widget.size: 22,
      ),
    );
  }
}