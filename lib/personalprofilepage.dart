import 'package:campus/Data/globalcolors.dart';
import 'package:flutter/material.dart';
import 'postpage.dart';
//数据
import 'Data/personaldata.dart';
//组件
import 'components/likesbutton.dart';
import 'components/time.dart';
import 'components/showdialog.dart';
import 'components/follow.dart';
import 'components/text.dart';

class PersonalProfilePage extends StatefulWidget{
  final Map<String, dynamic> userInfo;

  PersonalProfilePage({required this.userInfo});
  @override
  State<StatefulWidget> createState() => _PersonalProfilePageState();
}

class _PersonalProfilePageState extends State<PersonalProfilePage> {

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> userInfo = widget.userInfo;
    bool _isfollow = Isfollowed(userInfo['name']);
    return Scaffold(
      body:Stack(
        children: [
          Image.asset(
            '${userInfo['background']}',
            height: 505,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppBar(
                title: Text(userInfo['name']+ '的个人主页',style: TextStyle(fontWeight: FontWeight.bold),),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                    padding: EdgeInsets.only(left: 20,right: 20,top: 65,bottom: 20),
                    height: 315,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                          Color.fromRGBO(0, 0, 0, 0.3),
                          Color.fromRGBO(0, 0, 0, 0.3),
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 38.0,
                              backgroundImage: AssetImage('${userInfo['avatar']}'),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '${userInfo['name']}',
                                        style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),
                                      ),
                                      SizedBox(width: 3,),
                                      userInfo['sex'] == 'male'?Icon(Icons.male, color: Colors.blueAccent,):Icon(Icons.female,color: Colors.red,),
                                    ],
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    '${userInfo['school']}',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                ],
                              ),
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  InkWell(
                                    child: Container(
                                      width: 70,
                                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(color: Colors.red),
                                          // color: item['isFollowing'] ? Colors.white : Colors.red,
                                          color: Colors.white
                                      ),
                                      child: Text(
                                        _isfollow? '已关注': '关注',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          // color: item['isFollowing'] ? Colors.black54 : Colors.white,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      if(_isfollow){

                                        ConfirmDialogFactory.create(
                                          context,
                                          '提示',
                                          '是否取消关注？',
                                              () {
                                            setState(() {
                                              int index = FollowIndex(userInfo['name']);
                                              admin[0]['followingList'].removeAt(index);
                                            });
                                            print('点击了确定按钮');
                                          },
                                          cancerEvent: () {
                                            // 点击取消按钮后执行的事件
                                            // 可以在这里编写需要执行的逻辑代码
                                            print('点击了取消按钮');
                                          },
                                        );
                                      }else if(!_isfollow){
                                        ConfirmDialogFactory.create(
                                          context,
                                          '提示',
                                          '是否关注此作者？',
                                              () {
                                            setState(() {
                                              admin[0]['followingList'].add(userInfo['name']);
                                            });
                                          },
                                          cancerEvent: () {
                                            // 点击取消按钮后执行的事件
                                            // 可以在这里编写需要执行的逻辑代码
                                          },
                                        );
                                      }
                                    },
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      SizedBox(width: 25,),
                                      Column(
                                        children: [
                                          Text('粉丝', style: TextStyle(color: Colors.white,fontSize: 14),),
                                          SizedBox(height: 5,),
                                          Text('${userInfo['fans']}', style: TextStyle(color: Colors.white,fontSize: 12),),
                                        ],
                                      ),
                                      SizedBox(width: 8,),
                                      Column(
                                        children: [
                                          Text('关注', style: TextStyle(color: Colors.white,fontSize: 14),),
                                          SizedBox(height: 5,),
                                          Text('${userInfo['following']}', style: TextStyle(color: Colors.white,fontSize: 12),),
                                        ],
                                      ),
                                      SizedBox(width: 3,)
                                    ],
                                  )
                                ]
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 22,bottom: 10),
                          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 25),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(240, 240, 240, 0.65),
                              borderRadius: BorderRadius.circular(30.0)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'About Me',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 7.0),
                              Text(
                                '${userInfo['intro']}',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 14.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                ),
              ),
              Expanded(
                flex: 3,
                child: DefaultTabController(
                  length: 2,
                  child: Scaffold(
                    appBar: TabBar(
                      labelColor: Colors.red,
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Colors.red,
                      tabs: [
                        Tab(text: '帖子'),
                        Tab(text: '喜欢'),
                      ],
                    ),
                    body: TabBarView(
                      children: [
                        ListView.builder(
                            itemCount: userInfo['post'].length,
                            itemBuilder: (BuildContext context, int index) {
                              final Map<String, dynamic> post = userInfo['post'][index];
                              final Map<String, dynamic> author = userInfo;
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
                                              Padding(
                                                  padding: EdgeInsets.only(top: 5,bottom: 10),
                                                  child: GestureDetector(
                                                    child:  Text(
                                                      '${post['text']}',
                                                      maxLines: 2,
                                                      overflow: TextOverflow.ellipsis,
                                                      style: TextStyle(fontSize: 16),
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
                                        post['image'].length != 0?Expanded(
                                          flex: post['image'].length != 0? 3: 0,
                                          child: Container(
                                            margin: EdgeInsets.only(left: 12.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(6.0),
                                                  child:  Image.asset(
                                                    '${post['image']}',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ):Container(),
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
                        ),
                        ListView.builder(
                          itemCount: userInfo['likes'].length,
                          itemBuilder: (BuildContext context, int index) {
                            final Map<String, dynamic> likes = userInfo['likes'][index];
                            int num = all.indexWhere((element) => element['name'] == likes['name']);
                            final Map<String, dynamic> userinfo = all[num];
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
                                                        MaterialPageRoute(builder: (context)=>PostPage(userInfo: userinfo, article: likes))
                                                    );
                                                  },
                                                )
                                            ),
                                          ],
                                        ),
                                      ),
                                      likes['image'].length != 0?Expanded(
                                        flex: 3,
                                        child: Container(
                                          margin: EdgeInsets.only(left: 12.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(6.0),
                                                child:  Image.asset(
                                                  '${likes['image']}',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ):Container(),
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
                                          backgroundImage: AssetImage('${userinfo['avatar']}'),
                                        ),
                                      ),
                                      SizedBox(width: 7.0),
                                      Text(
                                        '${userinfo['name']}',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 14.0),
                                      ),
                                      SizedBox(width: 14),
                                      ArticleScreen(article: likes,size: 18,),
                                      SizedBox(width: 8),
                                      ComponentText(content: int.parse(likes['likes']), size: 12,),
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
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

