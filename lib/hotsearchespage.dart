import 'dart:math';

import 'package:flutter/material.dart';
import 'postpage.dart';
import 'personalprofilepage.dart';
import 'Data/hotsearches.dart';
//组件
import 'components/time.dart';
//数据
import 'Data/personaldata.dart';

//标签的背景颜色
Color randomColor() {
  final colors = [
    Colors.red.withOpacity(0.7),
    Colors.orange.withOpacity(0.7),
    Colors.brown.withOpacity(0.7),
    Colors.green.withOpacity(0.7),
    Colors.blue.withOpacity(0.7),
    Colors.indigo.withOpacity(0.7),
    Colors.purple.withOpacity(0.7),
  ];
  return colors[Random().nextInt(colors.length)];
}
//index的外框border
Color randomcolor() {
final colors = [
  Colors.red,
  Colors.orange,
  Colors.brown,
  Colors.green,
  Colors.blue,
  Colors.indigo,
  Colors.purple,
];return colors[Random().nextInt(colors.length)];
}
class HotSearchPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '热榜',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 4, // 阴影
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: hotmessageList.length,
        itemBuilder: (BuildContext context, int index) {
          final Map<String, dynamic> post = hotmessageList[index]['post'][0];
          int i =0;
          for(i =0;i<all.length;i++){
            if(all[i]['name'] == post['name']){
              break;
            }
          }
          final Map<String, dynamic> author = all[i];
          String time = getTime(post['time']);
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 3,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 22,
                      height: 14,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: index<3?Colors.orange:Colors.orange.withOpacity(0.25)
                      ),
                      child: Center(
                        child: Text(
                          '${post['id']}',
                          style: TextStyle(
                            color: index<3?Colors.white:Colors.brown.withOpacity(0.7),
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '${post['comments']} 评论   ${post['likes']} 点赞   ${post['viewer']} 阅读',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: post['image'].length != 0? 7:10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 5,bottom: 10),
                              child: GestureDetector(
                                child:  Text(
                                  '${post['text']}',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                ),
                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=>PostPage(userInfo: author, article: post))
                                  );
                                },
                              )
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: post['image'].length != 0? 3: 0,
                      child: Container(
                        margin: EdgeInsets.only(left: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4.0),
                              child: post['image'].length != 0? Image.asset(
                                '${post['image']}',
                                fit: BoxFit.cover,
                              ):null,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6,vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color.fromRGBO(220, 226, 235, 1.0),
                      ),
                      child: Text(
                        '#${post['tags']}',
                        style: TextStyle(color: Color.fromRGBO(99, 103, 133, 1.0)),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>PersonalProfilePage(userInfo: author))
                              );
                            },
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage('${author['avatar']}'),
                            ),
                          ),
                          SizedBox(width: 6,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>PersonalProfilePage(userInfo: author))
                              );
                            },
                            child: Text(time),
                          )
                        ],
                      ),
                    ),

                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}