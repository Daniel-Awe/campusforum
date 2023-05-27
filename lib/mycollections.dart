import 'package:flutter/material.dart';
//数据
import 'Data/personaldata.dart';
//次级页面
import 'postpage.dart';
//组件
import 'Data/globalcolors.dart';
import 'components/customappbar.dart';
import 'components/time.dart';
import 'components/likesbutton.dart';

class myCollections extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _myCollectionsState();
}

class _myCollectionsState extends State<myCollections>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar:CustomAppBar(
          title: '我的点赞',
          color: themeColors[colorindex],
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        body: Container(
          decoration: BoxDecoration(
           color: Colors.white
          ),
          child: ListView.builder(
          itemCount: admin[0]['likes'].length,
          itemBuilder: (BuildContext context, int index) {
            final Map<String, dynamic> likes = admin[0]['likes'][index];
            int i =0;
            for(i =0;i<all.length;i++){
              if(all[i]['name'] == likes['name']){
                break;
              }
            }
            //这里有一个bug。我在all数据的最后加上了admin的数据，但是在收藏自我的文章时，会出现bug。
            if(i==all.length){
              i--;
            }
            final Map<String, dynamic> author = all[i];
            String time = getTime(likes['time']);
            return Container(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1.0,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: likes['image'].length != 0? 7:10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 5,bottom: 10),
                                child: GestureDetector(
                                  child:  Text(
                                    '${likes['text']}',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  onTap: (){
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context)=>PostPage(userInfo: author, article: likes))
                                    );
                                  },
                                )
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: likes['image'].length != 0? 3: 0,
                        child: Container(
                          margin: EdgeInsets.only(left: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(6.0),
                                child: likes['image'].length != 0? Image.asset(
                                  '${likes['image']}',
                                  fit: BoxFit.cover,
                                ):null,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4,),
                  Row(
                    children: [
                      Container(
                        width: 20.0,
                        height: 20.0,
                        child: CircleAvatar(
                          radius: 14.0,
                          backgroundImage: AssetImage('${author['avatar']}'),
                        ),
                      ),
                      SizedBox(width: 7.0),
                      Text(
                        '${author['name']}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 14.0),
                      ),
                      SizedBox(width: 12,),
                      ArticleScreen(article: likes),
                      Expanded(
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(time, style: TextStyle(color: Colors.grey,fontSize: 12),),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          }
          )
        ),
      ),
    );
  }
}