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
      if (like['text'] == widget.article['text']) {
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
        admin[0]['likes'].removeWhere((like) => like['text'] == widget.article['text']);
        all[all.length-1]['likes'].removeWhere((like) => like['text'] == widget.article['text']);
        _liked = false;
        //点赞个数减少
        int authorindex = 0;
        for(int i =0;i<all.length;i++){
          if(widget.article['name'] == admin[0]['name']){
            for(int j =0;j<all[i]['post'].length;j++){
              if(widget.article['text'] == admin[0]['post'][j]['text']){
                int likess = int.parse(admin[0]['post'][j]['likes']);
                admin[0]['post'][j]['likes'] = '${likess -1}';
                all[all.length-1]['post'][j]['likes'] = '${likess -1}';
              }
            }
          }else{
            if(widget.article['name'] == all[i]['name']){
              for(int j =0;j<all[i]['post'].length;j++){
                if(widget.article['text']==all[i]['post'][j]['text']){
                  int likess = int.parse(all[i]['post'][j]['likes']);
                  all[i]['post'][j]['likes'] = '${likess -1}';
                }
              }
            }
          }
        }
      } else if(_liked == false) {
        // 点赞
        admin[0]['likes'].add({
          'title': '',
          'text':'${widget.article['text']}',
          'time': '${widget.article['time']}',
          'comments': '${widget.article['comments']}',
          'likes': '${widget.article['likes']}',
          'tags': '${widget.article['tags']}',
          'image': '${widget.article['image']}',
          'name': '${widget.article['name']}',
          'comments_data': [],
        });
        all[all.length-1]['likes'].add({
          'title': '',
          'text':'${widget.article['text']}',
          'time': '${widget.article['time']}',
          'comments': '${widget.article['comments']}',
          'likes': '${widget.article['likes']}',
          'tags': '${widget.article['tags']}',
          'image': '${widget.article['image']}',
          'name': '${widget.article['name']}',
          'comments_data': [],
        });
        _liked = true;

        //点赞个数增加
        int authorindex = 0;
        for(int i =0;i<all.length;i++){
          if(widget.article['name'] == admin[0]['name']){
            for(int j =0;j<all[i]['post'].length;j++){
              if(widget.article['text'] == admin[0]['post'][j]['text']){
                int likess = int.parse(admin[0]['post'][j]['likes']);
                admin[0]['post'][j]['likes'] = '${likess +1}';
                all[all.length-1]['post'][j]['likes'] = '${likess +1}';
              }
            }
          }else{
            if(widget.article['name'] == all[i]['name']){
              for(int j =0;j<all[i]['post'].length;j++){
                if(widget.article['text']==all[i]['post'][j]['text']){
                  int likess = int.parse(all[i]['post'][j]['likes']);
                  all[i]['post'][j]['likes'] = '${likess +1}';
                }
              }
            }
          }
        }
      }
    });
    print(widget.article);
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