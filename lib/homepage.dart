import 'package:flutter/material.dart';
import 'dart:async';
//次级页面
import 'postpage.dart';
import 'personalprofilepage.dart';
import 'hotsearchespage.dart';
//数据
import 'Data/hotsearches.dart';

import 'Data/personaldata.dart';
//组件
import 'components/likesbutton.dart';
import 'components/time.dart';


class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomePageState();
}


class _HomePageStatee extends State<HomePage> {
  final ScrollController _controller = ScrollController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _startScrolling();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startScrolling() {
    _controller.animateTo(
      _controller.position.maxScrollExtent,
      duration: const Duration(seconds: 20),
      curve: Curves.linear,
    ).then((value) {
      if (_currentIndex == hotpost.length) {
        _currentIndex = 0;
        _controller.jumpTo(0);
      } else {
        _currentIndex++;
      }
      _startScrolling();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            color: Colors.red,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "十大热帖",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(color: Colors.grey),
                  right: BorderSide(color: Colors.grey),
                ),
              ),
              child: Column(
                children: [

                  Expanded(
                    child: ListView.builder(
                      controller: _controller,
                      itemCount: hotpost.length ,
                      itemBuilder: (context, index) {
                        int postIndex = (index + _currentIndex) % hotpost.length;
                        Map<String, dynamic> post = hotpost[postIndex];
                        String number = (postIndex + 1).toString().padLeft(2, '0');
                        String title = post['title'];
                        int viewer = post['viewer'];
                        return ListTile(
                            title: Row(
                              children: [
                                Text(
                                  number,
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(width: 8),
                                Flexible(
                                  child: Text(
                                    title.length > 20 ? title.substring(0, 20) + '...' : title,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            )
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class _HomePageState extends State<HomePage> {

  List<bool> isExpandedList = List.generate(20, (index) => false);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 200.0,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  '浙科圈',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                ),
                background: Image.asset('assets/title.jpg',fit: BoxFit.cover,)
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 170,
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '热搜榜',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                          child: GestureDetector(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildHotSearch('1', hotmessageList[0]['post'][0]['title'], Colors.red),
                                  SizedBox(height: 8),
                                  _buildHotSearch('2', hotmessageList[1]['post'][0]['title'], Colors.orange),
                                  SizedBox(height: 8),
                                  _buildHotSearch('3', hotmessageList[2]['post'][0]['title'], Colors.green),
                                ],
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>HotSearchPage()));
                            },
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    '帖子',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                //文章
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    // var random = Random();
                    // int number = random.nextInt(9);
                    bool isExpanded = false;
                    Map<String, dynamic> author = Map<String, dynamic>.from(all[index]);
                    Map<String, dynamic> article = Map<String, dynamic>.from(author['post'][0]);
                    //文本超过6行时，显示“展开”
                    final textSpan = TextSpan(
                      text: '${article['text']}',
                      style: TextStyle(fontSize: 18),
                    );
                    final textPainter = TextPainter(
                      text: textSpan,
                      maxLines: 6,
                      textDirection: TextDirection.ltr,
                    );
                    textPainter.layout(maxWidth: MediaQuery.of(context).size.width);
                    final bool isTextOverflow = textPainter.didExceedMaxLines;
                    String time = getTime(article['time']);
                    return Container(
                      margin: EdgeInsets.only(top: 12,),
                      padding: EdgeInsets.only(top: 5,bottom: 15,right: 15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey.withOpacity(0.5),
                              width: 1.0,
                            ),
                          )
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=>PersonalProfilePage(userInfo: author)));
                                },
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('${author['avatar']}'),
                                  radius: 24,
                                ),
                              )
                          ),
                          Expanded(
                              flex: 8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context)=>PersonalProfilePage(userInfo: author)));
                                        },
                                        child: Text(
                                          '${author['name']}',
                                          style: TextStyle(fontSize: 18,color: Color.fromRGBO(100, 106, 141, 1.0)),
                                        ),
                                      ),
                                      SizedBox(width: 6,),
                                      Text('·',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                                      SizedBox(width: 6,),
                                      Text(time),
                                      Spacer(),
                                      GestureDetector(
                                        onTap: () {
                                        },
                                        child: const Icon(
                                          Icons.more_horiz,
                                          color: Color.fromRGBO(119, 119, 119, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 7),
                                  GestureDetector(
                                    child: Text(
                                      '${article['text']}',
                                      style: TextStyle(fontSize: 18,),
                                      maxLines: isExpandedList[index] ? null : 6,
                                      overflow: isExpandedList[index] ? null : TextOverflow.ellipsis,
                                    ),
                                    onTap: (){
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context)=>PostPage(userInfo: author, article: article)));
                                    },
                                  ),
                                  SizedBox(height: 2,),
                                  GestureDetector(
                                    child: isTextOverflow
                                        ? Text(
                                      isExpandedList[index] ? '收起' : '展开',
                                      style: TextStyle(
                                        color: Color.fromRGBO(99, 103, 133, 1.0),
                                        fontSize: 16,
                                      ),
                                    ): Container(),
                                    onTap: () {
                                      setState(() {
                                        isExpandedList[index] = !isExpandedList[index];
                                      });
                                    },
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 6,vertical: 4),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      color: Color.fromRGBO(220, 226, 235, 1.0),
                                    ),
                                    child: Text(
                                      '#${article['tags']}',
                                      style: TextStyle(color: Color.fromRGBO(99, 103, 133, 1.0)),
                                    ),
                                  ),
                                  SizedBox(height: 14,),
                                  Row(
                                    children: [
                                      Icon(IconData(0xe600,fontFamily: 'MyIcons'),color: Colors.grey,),
                                      SizedBox(width: 6,),
                                      Text('收藏',style: TextStyle(color: Colors.grey)),
                                      SizedBox(width: 20,),
                                      ArticleScreen(article: article),
                                      SizedBox(width: 6),
                                      Text(article['likes']==0? '点赞': '${article['likes']}',style: TextStyle(color: Colors.grey),),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 6),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(25),
                                                color: Colors.white,
                                                border: Border.all(color: Colors.grey),
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.edit,size: 14,color: Colors.grey,),
                                                  Text('评论',style: TextStyle(fontSize: 13),),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                          ),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  //热搜板块
  Widget _buildHotSearch(String number, String text, Color color) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            border: Border.all(color: color, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              number,
              style: TextStyle(color: color, fontWeight: FontWeight.bold,fontSize: 16),
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          flex: 9,
          child:  Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }
}
