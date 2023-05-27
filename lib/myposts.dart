import 'package:flutter/material.dart';
//数据
import 'Data/personaldata.dart';
//次级页面
import 'postpage.dart';
//组件
import 'Data/globalcolors.dart';
import 'components/time.dart';
import 'components/customappbar.dart';
import 'components/likesbutton.dart';
import 'components/text.dart';
import 'components/commentsbutton.dart';
import 'components/showdialog.dart';

class myPosts extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _myPostsState();
}

class _myPostsState extends State<myPosts>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(
          title: '我的帖子',
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
                itemCount: admin[0]['post'].length,
                itemBuilder: (BuildContext context, int index) {
                  final Map<String, dynamic> post = admin[0]['post'][index];
                  final Map<String, dynamic> author = admin[0];
                  String time = getTime(post['time']);
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
                              flex: post['image'].length != 0? 7:10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextButton(
                                    child:  Text(
                                      '${post['text']}',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 16,color: Colors.black),
                                    ),
                                    onPressed: (){
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context)=>PostPage(userInfo: admin[0], article: admin[0]['post'][index])));
                                    },
                                  )
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
                                      borderRadius: BorderRadius.circular(6.0),
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
                        SizedBox(height: 4,),
                        Row(
                          children: [
                            SizedBox(width: 7.0),
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
                            SizedBox(width: 18.0),
                            ArticleScreen(article: post,size: 18,),
                            SizedBox(width: 4.0),
                            ComponentText(content: int.parse(post['likes']), size: 12,),
                            SizedBox(width: 9.0),
                            ArticleComments(size: 18,),
                            SizedBox(width: 4.0),
                            ComponentText(content: int.parse(post['comments']), size: 12,),
                            SizedBox(width: 9.0),
                            GestureDetector(
                                onTap: (){
                                  ConfirmDialogFactory.create(
                                    context,
                                    '提示',
                                    '你确定要删除此文章？',
                                        () {
                                      setState(() {
                                        admin[0]['post'].removeAt(index);
                                      });
                                      print('点击了确定按钮');
                                    },
                                    cancerEvent: () {
                                      // 点击取消按钮后执行的事件
                                      // 可以在这里编写需要执行的逻辑代码
                                      print('点击了取消按钮');
                                    },
                                  );
                                },
                                child: Icon(IconData(0xe8b6,fontFamily: 'MyIcons'), color: Colors.grey.withOpacity(0.75),size: 18,)
                            ),
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